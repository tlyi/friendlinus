import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:friendlinus/domain/data/forum/value_objects.dart';

part 'poll.freezed.dart';

@freezed
abstract class Poll implements _$Poll {
  const Poll._();

  const factory Poll({
    required int numOptions,
    required Title title,
    required List<PollOption> optionList,
    required List<int> voteList,
    required int totalVotes,
  }) = _Poll;

  factory Poll.empty() =>
      Poll(numOptions: 0, title: Title(''), optionList: [], voteList: [], totalVotes: 0);
}
