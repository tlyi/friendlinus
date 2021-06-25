part of 'forum_actor_bloc.dart';

@freezed
class ForumActorState with _$ForumActorState {
  const factory ForumActorState({
    required String userId,
  }) = _ForumActorState;

  factory ForumActorState.initial() => const ForumActorState(
        userId: '',
      );
}
