import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:friendlinus/domain/data/forum/comment/comment.dart';
import 'package:friendlinus/domain/data/forum/following_feed/following_feed.dart';
import 'package:friendlinus/domain/data/forum/forum_post/forum_post.dart';
import 'package:friendlinus/domain/data/data_failure.dart';
import 'package:friendlinus/domain/data/forum/i_forum_repository.dart';
import 'package:friendlinus/domain/data/forum/poll/poll.dart';
import 'package:friendlinus/domain/data/notifications/notification.dart';
import 'package:friendlinus/domain/mods/mod.dart';
import 'package:friendlinus/infrastructure/data/forum/comment_dtos/comment_dtos.dart';
import 'package:friendlinus/infrastructure/data/forum/following_feed_dtos/following_feed_dtos.dart';
import 'package:friendlinus/infrastructure/data/forum/forum_post_dtos/forum_post_dtos.dart';
import 'package:friendlinus/infrastructure/data/forum/poll_dtos/poll_dtos.dart';
import 'package:friendlinus/infrastructure/data/notifications/notification_dtos.dart';
import 'package:friendlinus/infrastructure/data/profile/mods/mod_dtos.dart';
import 'package:friendlinus/infrastructure/data/profile/profile_dtos.dart';
import 'package:injectable/injectable.dart';
import 'package:friendlinus/infrastructure/core/firestore_helpers.dart';
import 'package:friendlinus/domain/core/constants.dart' as constants;

@LazySingleton(as: IForumRepository)
class ForumPostRepository implements IForumRepository {
  final FirebaseFirestore _firestore;
  final FirebaseStorage _firebaseStorage;

  ForumPostRepository(this._firestore, this._firebaseStorage);

  @override
  Future<String> getOwnId() async {
    final userDoc = await _firestore.userDocument();
    return userDoc.id;
  }

  @override
  Future<Either<DataFailure, Unit>> create(
      ForumPost forumPost, String forumId) async {
    try {
      //Create forum
      final forumsRef = await _firestore.forumsRef();
      final tag = forumPost.tag == '' ? 'General' : forumPost.tag;
      final forumPostDto =
          ForumPostDto.fromDomain(forumPost.copyWith(tag: tag));

      await forumsRef.doc(forumId).set(forumPostDto.toJson());

      final modulesRef = await _firestore.modulesRef();
      await _firestore.runTransaction((transaction) async {
        //Update module last posted
        final tagDoc = modulesRef.doc(tag);
        transaction.update(tagDoc,
            {'lastPosted': DateTime.now().millisecondsSinceEpoch.toString()});

        //Update anonymous last posted
        if (forumPost.isAnon) {
          final anonDoc = modulesRef.doc('Anonymous');
          transaction.update(anonDoc,
              {'lastPosted': DateTime.now().millisecondsSinceEpoch.toString()});
        } else {
          //If not anon, add to followers' feed & own forumsPosted array
          final userDoc = await _firestore.userDocument();
          final ownProfile = await userDoc.get();
          final List<String> followers =
              ProfileDto.fromFirestore(ownProfile).toDomain().followedBy;
          transaction.update(userDoc, {
            'forumsPosted': FieldValue.arrayUnion([forumId])
          });

          FollowingFeed followingFeed = FollowingFeed.empty().copyWith(
              forumId: forumId,
              posterUserId: forumPost.posterUserId,
              timestamp: DateTime.now().millisecondsSinceEpoch.toString());
          final followingFeedDto =
              FollowingFeedDto.fromDomain(followingFeed).toJson();
          for (final String follower in followers) {
            final followingFeedRef =
                await _firestore.followingFeedUserRef(follower);
            final followingFeedDoc = followingFeedRef.doc(forumId);
            transaction.set(followingFeedDoc, followingFeedDto);
          }
        }
      });

      return right(unit);
    } on FirebaseException catch (e) {
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const DataFailure.insufficientPermission());
      } else {
        return left(const DataFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<DataFailure, String>> uploadPhoto(
      File photo, String forumId) async {
    UploadTask storageUploadTask;
    storageUploadTask = _firebaseStorage
        .ref()
        .child('forumPictures')
        .child(forumId)
        .child(forumId)
        .putFile(photo);

    try {
      final String url = await storageUploadTask.then((ref) async {
        return ref.ref.getDownloadURL();
      });
      return right(url);
    } on FirebaseException catch (e) {
      print(e.code);
      return left(const DataFailure.unexpected());
    }
  }

  @override
  Future<Either<DataFailure, Unit>> createPoll(
      Poll poll, String forumId) async {
    try {
      final pollDoc = await _firestore.pollDocument(forumId);
      final pollDto = PollDto.fromDomain(poll);

      await pollDoc.set(pollDto.toJson());

      return right(unit);
    } on FirebaseException catch (e) {
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const DataFailure.insufficientPermission());
      } else {
        return left(const DataFailure.unexpected());
      }
    }
  }

  @override
  Stream<Either<DataFailure, List<ForumPost>>> retrieveForums() async* {
    final forumsRef = await _firestore.forumsRef();
    yield* forumsRef
        .orderBy('timestamp', descending: true)
        .snapshots()
        .map(
          (snapshot) => right<DataFailure, List<ForumPost>>(
            snapshot.docs
                .map((doc) => ForumPostDto.fromFirestore(doc).toDomain())
                .toList(),
          ),
        )
        .handleError((e) {
      if (e is FirebaseException && e.message!.contains('PERMISSION_DENIED')) {
        return left(const DataFailure.insufficientPermission());
      } else {
        print(e);
        return left(const DataFailure.unexpected());
      }
    });
  }

  @override
  Stream<Either<DataFailure, ForumPost>> retrieveForumPost(
      String forumId) async* {
    final forumDoc = await _firestore.forumDocument(forumId);
    yield* forumDoc
        .snapshots()
        .map(
          (snapshot) => right<DataFailure, ForumPost>(
              ForumPostDto.fromFirestore(snapshot).toDomain()),
        )
        .handleError((e) {
      if (e is FirebaseException && e.message!.contains('PERMISSION_DENIED')) {
        return left(const DataFailure.insufficientPermission());
      } else {
        print(e);
        return left(const DataFailure.unexpected());
      }
    });
  }

  @override
  Stream<Either<DataFailure, Poll>> retrievePoll(String forumId) async* {
    final pollsDoc = await _firestore.pollDocument(forumId);
    yield* pollsDoc
        .snapshots()
        .map(
          (snapshot) => right<DataFailure, Poll>(
              PollDto.fromFirestore(snapshot).toDomain()),
        )
        .handleError((e) {
      if (e is FirebaseException && e.message!.contains('PERMISSION_DENIED')) {
        return left(const DataFailure.insufficientPermission());
      } else {
        print(e);
        return left(const DataFailure.unexpected());
      }
    });
  }

  @override
  Future<Either<DataFailure, Unit>> likeForum(
      ForumPost forum, String userId) async {
    try {
      await _firestore.runTransaction((transaction) async {
        final forumDoc = await _firestore.forumDocument(forum.forumId);
        if (forum.posterUserId != userId) {
          final notifRef =
              await _firestore.notificationsUserRef(forum.posterUserId);
          final notifDoc = notifRef.doc();
          final notif = Notification.empty().copyWith(
              senderId: userId,
              notificationType: 'forumLike',
              postId: forum.forumId,
              title: forum.title.getOrCrash(),
              pollAdded: forum.pollAdded);
          final notifDto = NotificationDto.fromDomain(notif).toJson();
          transaction.set(notifDoc, notifDto);
        }
        transaction.update(forumDoc, {
          'likedUserIds': FieldValue.arrayUnion([userId]),
          'likes': FieldValue.increment(1),
        });
      });
      return right(unit);
    } on FirebaseException catch (e) {
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const DataFailure.insufficientPermission());
      } else {
        return left(const DataFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<DataFailure, Unit>> unlikeForum(
      String forumId, String userId) async {
    try {
      await _firestore.runTransaction((transaction) async {
        final forumDoc = await _firestore.forumDocument(forumId);
        transaction.update(forumDoc, {
          'likedUserIds': FieldValue.arrayRemove([userId]),
          'likes': FieldValue.increment(-1),
        });
      });
      return right(unit);
    } on FirebaseException catch (e) {
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const DataFailure.insufficientPermission());
      } else {
        return left(const DataFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<DataFailure, Unit>> vote(
      String forumId, int index, String userId) async {
    try {
      await _firestore.runTransaction((transaction) async {
        final pollDoc = await _firestore.pollDocument(forumId);
        List<double> voteList = [];
        await pollDoc.get().then((snapshot) {
          voteList = PollDto.fromFirestore(snapshot).toDomain().voteList;
        });
        voteList[index]++;
        transaction.update(pollDoc, {
          'usersWhoVoted.$userId': index, //user[id]=0
          'voteList': voteList,
        });
      });
      return right(unit);
    } on FirebaseException catch (e) {
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const DataFailure.insufficientPermission());
      } else {
        return left(const DataFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<DataFailure, Unit>> createComment(
      Comment comment, ForumPost forum) async {
    try {
      final commentRef = await _firestore.commentsForumRef(forum.forumId);
      final commentDto = CommentDto.fromDomain(comment);

      await commentRef.doc(comment.commentId).set(commentDto.toJson());

      if (comment.userId != forum.posterUserId) {
        final notifRef =
            await _firestore.notificationsUserRef(forum.posterUserId);
        final notifDoc = notifRef.doc();
        final notif = Notification.empty().copyWith(
            senderId: comment.isAnon ? constants.anonUserId : comment.userId,
            notificationType: 'newComment',
            postId: forum.forumId,
            title: forum.title.getOrCrash(),
            details: comment.commentText.getOrCrash(),
            pollAdded: forum.pollAdded);
        final notifDto = NotificationDto.fromDomain(notif).toJson();
        notifDoc.set(notifDto);
      }

      return right(unit);
    } on FirebaseException catch (e) {
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const DataFailure.insufficientPermission());
      } else {
        return left(const DataFailure.unexpected());
      }
    }
  }

  @override
  Stream<Either<DataFailure, List<Comment>>> retrieveComments(
      String sortedBy, String forumId) async* {
    String orderBy = sortedBy == 'Most Liked' ? 'likes' : 'timestamp';
    bool descending = sortedBy == 'Oldest' ? false : true;
    print('orderedBy: $orderBy');
    final commentsRef = await _firestore.commentsForumRef(forumId);
    yield* commentsRef
        .orderBy(orderBy, descending: descending)
        .snapshots()
        .map(
          (snapshot) => right<DataFailure, List<Comment>>(
            snapshot.docs
                .map((doc) => CommentDto.fromFirestore(doc).toDomain())
                .toList(),
          ),
        )
        .handleError((e) {
      if (e is FirebaseException && e.message!.contains('PERMISSION_DENIED')) {
        return left(const DataFailure.insufficientPermission());
      } else {
        print(e);
        return left(const DataFailure.unexpected());
      }
    });
  }

  @override
  Future<Either<DataFailure, Unit>> likeComment(
      ForumPost forum, Comment comment, String userId) async {
    try {
      await _firestore.runTransaction((transaction) async {
        final commentsRef = await _firestore.commentsForumRef(forum.forumId);
        final commentDoc = commentsRef.doc(comment.commentId);
        if (comment.userId != userId) {
          final notifRef =
              await _firestore.notificationsUserRef(comment.userId);
          final notifDoc = notifRef.doc();
          final notif = Notification.empty().copyWith(
              senderId: userId,
              notificationType: 'commentLike',
              postId: forum.forumId,
              title: forum.title.getOrCrash(),
              details: comment.commentText.getOrCrash(),
              pollAdded: forum.pollAdded);
          final notifDto = NotificationDto.fromDomain(notif).toJson();
          transaction.set(notifDoc, notifDto);
        }
        transaction.update(commentDoc, {
          'likedUserIds': FieldValue.arrayUnion([userId]),
          'likes': FieldValue.increment(1),
        });
      });

      return right(unit);
    } on FirebaseException catch (e) {
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const DataFailure.insufficientPermission());
      } else {
        return left(const DataFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<DataFailure, Unit>> unlikeComment(
      String forumId, String commentId, String userId) async {
    try {
      await _firestore.runTransaction((transaction) async {
        final commentsRef = await _firestore.commentsForumRef(forumId);
        final commentDoc = commentsRef.doc(commentId);
        transaction.update(commentDoc, {
          'likedUserIds': FieldValue.arrayRemove([userId]),
          'likes': FieldValue.increment(-1),
        });
      });
      return right(unit);
    } on FirebaseException catch (e) {
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const DataFailure.insufficientPermission());
      } else {
        return left(const DataFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<DataFailure, Unit>> deleteForum(
      String forumId, bool hasPhoto, bool isAnon) async {
    try {
      final forumDoc = await _firestore.forumDocument(forumId);
      await forumDoc.delete();

      //Recursively deletes each comment doc because of Firestore limitations
      final commentsRef = await _firestore.commentsForumRef(forumId);
      await commentsRef.get().then((snapshot) {
        for (DocumentSnapshot doc in snapshot.docs) {
          doc.reference.delete();
        }
      });

      //Deletes comments/forumId doc
      final commentDoc = await _firestore.commentsDoc(forumId);
      await commentDoc.delete();

      //Deletes Poll if poll exists
      final pollDoc = await _firestore.pollDocument(forumId);
      await pollDoc.get().then((doc) {
        if (doc.exists) {
          pollDoc.delete();
        }
      });

      //Delete photo if exists
      if (hasPhoto) {
        _firebaseStorage
            .ref()
            .child('forumPictures/$forumId/$forumId')
            .delete()
            .onError((error, stackTrace) => null);
      }

      if (!isAnon) {
        //Remove from their forumsPosted in profile
        final userDoc = await _firestore.userDocument();
        userDoc.update({
          'forumsPosted': FieldValue.arrayRemove([forumId])
        });

        //Remove from followers' feeds
        final ownProfile = await userDoc.get();
        final List<String> followers =
            ProfileDto.fromFirestore(ownProfile).toDomain().followedBy;
        for (final follower in followers) {
          final followingFeedRef =
              await _firestore.followingFeedUserRef(follower);
          await followingFeedRef.doc(forumId).delete();
        }
      }

      return right(unit);
    } on FirebaseException catch (e) {
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const DataFailure.insufficientPermission());
      } else {
        return left(const DataFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<DataFailure, List<String>>> searchModulesByModuleCode(
      String moduleCode) async {
    print("Searching for ${moduleCode.toUpperCase()}");
    final List<String> searchResults = [];
    final modRef = await _firestore.modulesRef();
    try {
      QuerySnapshot query = await modRef
          .where('moduleCode', isGreaterThanOrEqualTo: moduleCode.toUpperCase())
          .limit(15)
          .get();
      {
        if (query.docs.isNotEmpty) {
          for (final doc in query.docs) {
            if (doc.id.contains(moduleCode.toUpperCase())) {
              searchResults.add(doc.id);
            }
          }
        }

        return right(searchResults);
      }
    } on FirebaseException catch (e) {
      print(e);
      return left(const DataFailure.unexpected());
    }
  }

  @override
  Stream<Either<DataFailure, List<Mod>>> retrieveModules() async* {
    final userDoc = await _firestore.userDocument();
    final modulesRef = await _firestore.modulesRef();
    List<String> modulesFollowed = [];
    await userDoc.get().then((DocumentSnapshot doc) {
      modulesFollowed = ProfileDto.fromFirestore(doc).toDomain().modules;
    });

    modulesFollowed.addAll(['Anonymous', 'General']);
    //print(modulesFollowed);
    yield* modulesRef
        .where('moduleCode', whereIn: modulesFollowed)
        .orderBy('lastPosted', descending: true)
        .snapshots()
        .map(
      (snapshot) {
        return right<DataFailure, List<Mod>>(snapshot.docs.map((doc) {
          print("mod");
          return ModDto.fromFirestore(doc).toDomain();
        }).toList());
      },
    ).handleError((e) {
      if (e is FirebaseException && e.message!.contains('PERMISSION_DENIED')) {
        return left(const DataFailure.insufficientPermission());
      } else {
        print('help');
        print(e);
        return left(const DataFailure.unexpected());
      }
    });
  }

  @override
  Stream<Either<DataFailure, List<ForumPost>>> retrieveModuleForums(
      String moduleCode, String sortedBy) async* {
    String orderBy = sortedBy == 'Most Liked' ? 'likes' : 'timestamp';
    bool descending = sortedBy == 'Oldest' ? false : true;
    String oneWeekAgo =
        (DateTime.now().millisecondsSinceEpoch - 604800000).toString();
    final forumRef = await _firestore.forumsRef();
    if (moduleCode == "Anonymous") {
      yield* forumRef
          .where('isAnon', isEqualTo: true)
          .orderBy('timestamp', descending: true)
          .snapshots()
          .map(
            (snapshot) => right<DataFailure, List<ForumPost>>(
              snapshot.docs
                  .map((doc) => ForumPostDto.fromFirestore(doc).toDomain())
                  .toList(),
            ),
          )
          .handleError((e) {
        if (e is FirebaseException &&
            e.message!.contains('PERMISSION_DENIED')) {
          return left(const DataFailure.insufficientPermission());
        } else {
          print(e);
          return left(const DataFailure.unexpected());
        }
      });
    }
    yield* forumRef
        .where('tag', isEqualTo: moduleCode)
        .orderBy('timestamp', descending: true)
        .snapshots()
        .map(
          (snapshot) => right<DataFailure, List<ForumPost>>(
            snapshot.docs
                .map((doc) => ForumPostDto.fromFirestore(doc).toDomain())
                .toList(),
          ),
        )
        .handleError((e) {
      if (e is FirebaseException && e.message!.contains('PERMISSION_DENIED')) {
        return left(const DataFailure.insufficientPermission());
      } else {
        print(e);
        return left(const DataFailure.unexpected());
      }
    });
  }

  @override
  Future<Either<DataFailure, List<ForumPost>>> retrieveModuleFeed() async {
    final userDoc = await _firestore.userDocument();
    final forumRef = await _firestore.forumsRef();
    List<String> modulesFollowed = [];
    List<ForumPost> forums = [];

    await userDoc.get().then((DocumentSnapshot doc) {
      modulesFollowed = ProfileDto.fromFirestore(doc).toDomain().modules;
    });

    try {
      if (modulesFollowed.isNotEmpty) {
        QuerySnapshot query = await forumRef
            .where('tag', whereIn: modulesFollowed)
            .orderBy('timestamp', descending: true)
            .get();
        if (query.docs.isNotEmpty) {
          for (final doc in query.docs) {
            forums.add(ForumPostDto.fromFirestore(doc).toDomain());
          }
        }
      }
      return right(forums);
    } on FirebaseException catch (e) {
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const DataFailure.insufficientPermission());
      } else {
        return left(const DataFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<DataFailure, List<ForumPost>>> retrieveFriendFeed(
      String userId) async {
    List<String> forumIds = [];
    List<ForumPost> forums = [];
    final followingFeedUserRef = await _firestore.followingFeedUserRef(userId);
    final forumRef = await _firestore.forumsRef();
    try {
      QuerySnapshot query = await followingFeedUserRef
          .orderBy('timestamp', descending: true)
          .get();
      if (query.docs.isNotEmpty) {
        for (final doc in query.docs) {
          forumIds.add(FollowingFeedDto.fromFirestore(doc).toDomain().forumId);
        }
      }
      for (final forumId in forumIds) {
        final doc = await forumRef.doc(forumId).get();
        forums.add(ForumPostDto.fromFirestore(doc).toDomain());
      }
      return right(forums);
    } on FirebaseException catch (e) {
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const DataFailure.insufficientPermission());
      } else {
        return left(const DataFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<DataFailure, List<ForumPost>>> searchForumByTitle(
      String queryStr) async {
    final searchResults = <ForumPost>[];
    final forumRef = await _firestore.forumsRef();
    try {
      QuerySnapshot query = await forumRef
          .where('title', isGreaterThanOrEqualTo: queryStr)
          .where('title', isLessThanOrEqualTo: '$queryStr~')
          .get();
      {
        if (query.docs.isNotEmpty) {
          for (final doc in query.docs) {
            searchResults.add(ForumPostDto.fromFirestore(doc).toDomain());
          }
        }
        return right(searchResults);
      }
    } on FirebaseException catch (e) {
      print(e);
      return left(const DataFailure.unexpected());
    }
  }
}
