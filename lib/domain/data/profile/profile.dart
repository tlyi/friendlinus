import 'dart:core';
import 'package:freezed_annotation/freezed_annotation.dart';
<<<<<<< HEAD
import 'package:friendlinus/domain/core/value_objects.dart';
=======
import 'package:friendlinus/domain/data/forum/forum_post.dart';
>>>>>>> 0fa0a213a1c5c3a3dfbc7b530cb0445ff94c48fb
import 'package:friendlinus/domain/data/profile/value_objects.dart';
import 'package:friendlinus/domain/core/constants.dart' as constants;

part 'profile.freezed.dart';

@freezed
abstract class Profile implements _$Profile {
  const Profile._();

  const factory Profile({
    required String photoUrl,
    required Username username,
    required Course course,
    required Bio bio,
    required Mod module,
    required String uuid,
    required List<String> forumsPosted,
  }) = _Profile;

  factory Profile.empty() => Profile(
        photoUrl: constants.DEFAULT_PHOTO_URL,
        username: Username(''),
        course: Course(''),
        bio: Bio(''),
        module: Mod(''),
        uuid: '',
        forumsPosted: [],
      );
}
