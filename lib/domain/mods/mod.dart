import 'package:freezed_annotation/freezed_annotation.dart';

part 'mod.freezed.dart';

@freezed
abstract class Mod implements _$Mod {
  const Mod._();

  const factory Mod({
    required String moduleCode,
    required String moduleTitle,
  }) = _Mod;

  factory Mod.empty() => const Mod(
        moduleCode: '',
        moduleTitle: '',
      );

  factory Mod.fromJson2(Map<String, dynamic> json) {
    return Mod(
      moduleCode: json['moduleCode'] as String,
      moduleTitle: json['title'] as String,
    );
  }
}
