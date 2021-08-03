import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:friendlinus/domain/data/data_failure.dart';
import 'package:friendlinus/domain/data/forum/forum_post/forum_post.dart';
import 'package:friendlinus/domain/data/profile/i_profile_repository.dart';
import 'package:friendlinus/domain/data/profile/profile.dart';
import 'package:injectable/injectable.dart';

part 'profile_actor_event.dart';
part 'profile_actor_state.dart';
part 'profile_actor_bloc.freezed.dart';

@injectable
class ProfileActorBloc extends Bloc<ProfileActorEvent, ProfileActorState> {
  final IProfileRepository _profileRepository;
  ProfileActorBloc(this._profileRepository)
      : super(ProfileActorState.initial());

  @override
  Stream<ProfileActorState> mapEventToState(
    ProfileActorEvent event,
  ) async* {
    yield* event.map(
      loadingOtherProfile: (e) async* {
        yield state.copyWith(isLoading: true);
        Either<DataFailure, Profile> failureOrUserProfile =
            await _profileRepository.readOtherProfile(e.userId);
        String ownId = await _profileRepository.getUserId();
        bool isFollowing = await _profileRepository.checkIfFollowing(e.userId);
        Either<DataFailure, List<Profile>> failureOrFollowing =
            await _profileRepository.retrieveFollowing(e.userId);
        Either<DataFailure, List<Profile>> failureOrFollowers =
            await _profileRepository.retrieveFollowers(e.userId);
        Either<DataFailure, List<ForumPost>> failureOrForumsPosted =
            await _profileRepository.retrieveMyForums(e.userId);
        yield state.copyWith(
            failureOrUserProfile: failureOrUserProfile,
            ownId: ownId,
            userId: e.userId,
            isLoading: false,
            isFollowing: isFollowing,
            failureOrFollowing: failureOrFollowing,
            failureOrFollowers: failureOrFollowers,
            failureOrForumsPosted: failureOrForumsPosted);
      },
      loadingOwnProfile: (e) async* {
        yield state.copyWith(isLoading: true);
        String ownId = await _profileRepository.getUserId();
        Either<DataFailure, Profile> failureOrUserProfile =
            await _profileRepository.readOwnProfile();

        Either<DataFailure, List<Profile>> failureOrFollowing =
            await _profileRepository.retrieveFollowing(ownId);
        Either<DataFailure, List<Profile>> failureOrFollowers =
            await _profileRepository.retrieveFollowers(ownId);
        Either<DataFailure, List<ForumPost>> failureOrForumsPosted =
            await _profileRepository.retrieveMyForums(ownId);
        yield state.copyWith(
          failureOrUserProfile: failureOrUserProfile,
          ownId: ownId,
          userId: ownId,
          isLoading: false,
          isFollowing: false,
          failureOrFollowing: failureOrFollowing,
          failureOrFollowers: failureOrFollowers,
          failureOrForumsPosted: failureOrForumsPosted,
        );
      },
      addedFollower: (e) async* {
        await _profileRepository.addFollower(state.userId);
        Either<DataFailure, List<Profile>> failureOrFollowing =
            await _profileRepository.retrieveFollowing(state.userId);
        Either<DataFailure, List<Profile>> failureOrFollowers =
            await _profileRepository.retrieveFollowers(state.userId);
        yield state.copyWith(
          userId: state.userId,
          isLoading: false,
          isFollowing: true,
          failureOrFollowing: failureOrFollowing,
          failureOrFollowers: failureOrFollowers,
        );
      },
      removedFollower: (e) async* {
        await _profileRepository.removeFollower(state.userId);
        Either<DataFailure, List<Profile>> failureOrFollowing =
            await _profileRepository.retrieveFollowing(state.userId);
        Either<DataFailure, List<Profile>> failureOrFollowers =
            await _profileRepository.retrieveFollowers(state.userId);
        yield state.copyWith(
          userId: state.userId,
          isLoading: false,
          isFollowing: false,
          failureOrFollowing: failureOrFollowing,
          failureOrFollowers: failureOrFollowers,
        );
      },
      openStats: (e) async* {
        yield state.copyWith(statsDisplay: 15);
      },
      moreStats: (e) async* {
        yield state.copyWith(statsDisplay: state.statsDisplay + 10);
      },
    );
  }
}
