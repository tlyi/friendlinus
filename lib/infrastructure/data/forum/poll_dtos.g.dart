// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'poll_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PollDto _$_$_PollDtoFromJson(Map<String, dynamic> json) {
  return _$_PollDto(
    numOptions: json['numOptions'] as int,
    title: json['title'] as String,
    optionList:
        (json['optionList'] as List<dynamic>).map((e) => e as String).toList(),
    voteList: (json['voteList'] as List<dynamic>).map((e) => e as int).toList(),
    totalVotes: json['totalVotes'] as int,
  );
}

Map<String, dynamic> _$_$_PollDtoToJson(_$_PollDto instance) =>
    <String, dynamic>{
      'numOptions': instance.numOptions,
      'title': instance.title,
      'optionList': instance.optionList,
      'voteList': instance.voteList,
      'totalVotes': instance.totalVotes,
    };
