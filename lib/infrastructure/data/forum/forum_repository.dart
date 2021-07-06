import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:friendlinus/domain/data/forum/comment/comment.dart';
import 'package:friendlinus/domain/data/forum/forum_post/forum_post.dart';
import 'package:friendlinus/domain/data/data_failure.dart';
import 'package:friendlinus/domain/data/forum/i_forum_repository.dart';
import 'package:friendlinus/domain/data/forum/poll/poll.dart';
import 'package:friendlinus/infrastructure/data/forum/comment_dtos/comment_dtos.dart';
import 'package:friendlinus/infrastructure/data/forum/forum_post_dtos/forum_post_dtos.dart';
import 'package:friendlinus/infrastructure/data/forum/poll_dtos/poll_dtos.dart';
import 'package:injectable/injectable.dart';
import 'package:friendlinus/infrastructure/core/firestore_helpers.dart';

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
      final forumsRef = await _firestore.forumsRef();
      final forumPostDto = ForumPostDto.fromDomain(forumPost);

      await forumsRef.doc(forumId).set(forumPostDto.toJson());
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
      String forumId, String userId) async {
    try {
      await _firestore.runTransaction((transaction) async {
        final forumDoc = await _firestore.forumDocument(forumId);
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
      Comment comment, String forumId) async {
    try {
      final commentRef = await _firestore.commentsForumRef(forumId);
      final commentDto = CommentDto.fromDomain(comment);

      await commentRef.doc(comment.commentId).set(commentDto.toJson());

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
      String forumId, String commentId, String userId) async {
    try {
      await _firestore.runTransaction((transaction) async {
        final commentsRef = await _firestore.commentsForumRef(forumId);
        final commentDoc = commentsRef.doc(commentId);
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
      String forumId, bool hasPhoto) async {
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

      //Not sure how to check if photo exists??? But a bit sad if gotta retrieve the whole forum to check bool
      //Delete photo if exists
      if (hasPhoto) {
        _firebaseStorage
            .ref()
            .child('forumPictures/$forumId/$forumId')
            .delete()
            .onError((error, stackTrace) => null);
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
}
