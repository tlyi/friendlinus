import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:friendlinus/domain/data/data_failure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:friendlinus/domain/data/profile/i_profile_repository.dart';
import 'package:friendlinus/domain/data/profile/profile.dart';
import 'package:injectable/injectable.dart';

part 'search_profile_event.dart';
part 'search_profile_state.dart';
part 'search_profile_bloc.freezed.dart';

@injectable
class SearchProfileBloc extends Bloc<SearchProfileEvent, SearchProfileState> {
  final IProfileRepository _profileRepository;

  SearchProfileBloc(this._profileRepository)
      : super(SearchProfileState.initial());

  @override
  Stream<SearchProfileState> mapEventToState(
    SearchProfileEvent event,
  ) async* {
    yield* event.map(
      searchChanged: (e) async* {
        final searchResults =
            await _profileRepository.searchProfileByUsername(e.query);
        print(searchResults.getOrElse(() => <Profile>[]).length);
        yield state.copyWith(searchProfileResults: searchResults);
      },
    );
  }
}
