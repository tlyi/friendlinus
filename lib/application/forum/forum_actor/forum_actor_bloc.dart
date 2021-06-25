import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:friendlinus/domain/data/forum/i_forum_repository.dart';
import 'package:friendlinus/infrastructure/data/chats/chat_repository.dart';
import 'package:injectable/injectable.dart';

part 'forum_actor_event.dart';
part 'forum_actor_state.dart';
part 'forum_actor_bloc.freezed.dart';

@injectable
class ForumActorBloc extends Bloc<ForumActorEvent, ForumActorState> {
  final IForumRepository _forumRepository;
  ForumActorBloc(this._forumRepository) : super(ForumActorState.initial());

  @override
  Stream<ForumActorState> mapEventToState(
    ForumActorEvent event,
  ) async* {
    yield* event.map(
      started: (e) async* {
        final userId = await _forumRepository.getOwnId();
        yield state.copyWith(
          userId: userId,
        );
      },
      liked: (e) async* {
        await _forumRepository.like(e.forumId, state.userId);
      },
      unliked: (e) async* {
        await _forumRepository.unlike(e.forumId, state.userId);
      },
      voted: (e) async* {
        await _forumRepository.vote(e.forumId, e.index, state.userId);
      },
    );
  }
}
