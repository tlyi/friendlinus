import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:friendlinus/domain/mods/mod.dart';
import 'package:http/http.dart';

part 'mod_dtos.freezed.dart';
part 'mod_dtos.g.dart';

@freezed
abstract class ModDto implements _$ModDto {
  const ModDto._();

  const factory ModDto({
    required String moduleCode,
    required String title,
    required List<int> semesters,
  }) = _ModDto;

  factory ModDto.fromDomain(Mod mod) {
    return ModDto(
      moduleCode: mod.moduleCode,
      title: mod.moduleTitle,
      semesters: [],
    );
  }
  Mod toDomain() {
    return Mod(
      moduleCode: moduleCode,
      moduleTitle: title,
    );
  }

  factory ModDto.fromJson(Map<String, dynamic> json) => _$ModDtoFromJson(json);

  factory ModDto.fromAPI(Response response) {
    return ModDto.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  }
}
