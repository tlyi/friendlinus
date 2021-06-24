import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:friendlinus/domain/data/forum/poll.dart';
import 'package:friendlinus/domain/data/forum/value_objects.dart';

part 'poll_dtos.freezed.dart';
part 'poll_dtos.g.dart';

@freezed
abstract class PollDto implements _$PollDto {
  const PollDto._();

  const factory PollDto({
    required int numOptions,
    required List<String> optionList,
    required List<int> voteList,
    required int totalVotes,
  }) = _PollDto;

  factory PollDto.fromDomain(Poll poll) {
    return PollDto(
      numOptions: poll.numOptions,
      optionList: poll.optionList.map((value) => value.toString()).toList(),
      voteList: poll.voteList,
      totalVotes: poll.totalVotes,
    );
  }

  Poll toDomain() {
    return Poll(
      numOptions: numOptions,
      optionList: optionList.map((value) => PollOption(value)).toList(),
      voteList: voteList,
      totalVotes: totalVotes,
    );
  }

  factory PollDto.fromJson(Map<String, dynamic> json) =>
      _$PollDtoFromJson(json);

  factory PollDto.fromFirestore(DocumentSnapshot doc) {
    return PollDto.fromJson(doc.data()! as Map<String, dynamic>);
  }
}
