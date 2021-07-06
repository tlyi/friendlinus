part of 'profile_actor_bloc.dart';

@freezed
class ProfileActorState with _$ProfileActorState {
  const factory ProfileActorState({
    required String ownId,
    required String userId,
    required bool isLoading,
    required bool isFollowing,
    required Either<DataFailure, List<Profile>> failureOrFollowing,
    required Either<DataFailure, List<Profile>> failureOrFollowers,
    required Either<DataFailure, List<ForumPost>> failureOrForumsPosted,
  }) = _ProfileActorState;

  factory ProfileActorState.initial() => ProfileActorState(
        ownId: '',
        userId: '',
        isLoading: true,
        isFollowing: false,
        failureOrFollowing: right([]),
        failureOrFollowers: right([]),
        failureOrForumsPosted: right([]),
      );
}
