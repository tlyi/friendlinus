part of 'profile_actor_bloc.dart';

@freezed
class ProfileActorState with _$ProfileActorState {
  const factory ProfileActorState({
    required String userId,
    required bool isLoading,
    required bool isFollowing,
    required List<Profile> following,
  }) = _ProfileActorState;

  factory ProfileActorState.initial() => ProfileActorState(
        userId: '',
        isLoading: true,
        isFollowing: false,
        following: [],
      );
}
