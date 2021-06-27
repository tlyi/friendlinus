import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:friendlinus/domain/data/data_failure.dart';
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
        bool isFollowing = await _profileRepository.checkIfFollowing(e.userId);
        List<Profile> following =
            await _profileRepository.retrieveFollowing(e.userId);
        yield state.copyWith(
          userId: e.userId,
          isLoading: false,
          isFollowing: isFollowing,
          following: following,
        );
      },
      loadingOwnProfile: (e) async* {
        print("here");
        String ownId = await _profileRepository.getUserId();
        List<Profile> following =
            await _profileRepository.retrieveFollowing(ownId);
        yield state.copyWith(
          userId: ownId,
          isLoading: false,
          isFollowing: false,
          following: following,
        );
      },
      addedFollower: (e) async* {
        await _profileRepository.addFollower(state.userId);
        List<Profile> following =
            await _profileRepository.retrieveFollowing(state.userId);
        yield state.copyWith(
          userId: state.userId,
          isLoading: false,
          isFollowing: true,
          following: following,
        );
      },
      removedFollower: (e) async* {
        List<Profile> following =
            await _profileRepository.retrieveFollowing(state.userId);
        await _profileRepository.removeFollower(state.userId);
        yield state.copyWith(
          userId: state.userId,
          isLoading: false,
          isFollowing: false,
          following: following,
        );
      },
    );
  }
}
