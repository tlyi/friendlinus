/* DTO(Data transfer objects): contains the conversion of the entity 'Profile' fromDomain and toDomain 
*/

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:friendlinus/domain/core/value_objects.dart';
import 'package:friendlinus/domain/data/profile/profile.dart';
import 'package:friendlinus/domain/data/profile/value_objects.dart';

part 'profile_dtos.freezed.dart';
part 'profile_dtos.g.dart';

@freezed
abstract class ProfileDto implements _$ProfileDto {
  const ProfileDto._();

  const factory ProfileDto({
    required String photoUrl,
    required String username,
    required String course,
    required String bio,
    required String module,
    required String uuid,
  }) = _ProfileDto;

  factory ProfileDto.fromDomain(Profile profile) {
    return ProfileDto(
      photoUrl: profile.photoUrl,
      username: profile.username.getOrCrash(),
      course: profile.course.getOrCrash(),
      bio: profile.bio.getOrCrash(),
      module: profile.module.getOrCrash(),
      uuid: profile.uuid,
    );
  }

  Profile toDomain() {
    return Profile(
      photoUrl: photoUrl,
      username: Username(username),
      course: Course(course),
      bio: Bio(bio),
      module: Mod(module),
      uuid: uuid,
    );
  }

  factory ProfileDto.fromJson(Map<String, dynamic> json) =>
      _$ProfileDtoFromJson(json);

  factory ProfileDto.fromFirestore(DocumentSnapshot doc) {
    return ProfileDto.fromJson(doc.data()! as Map<String, dynamic>);
  }
}
