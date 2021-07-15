import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:friendlinus/domain/data/data_failure.dart';
import 'package:friendlinus/domain/data/forum/forum_post/forum_post.dart';
import 'package:friendlinus/domain/data/forum/i_forum_repository.dart';
import 'package:injectable/injectable.dart';

part 'module_forum_watcher_event.dart';
part 'module_forum_watcher_state.dart';
part 'module_forum_watcher_bloc.freezed.dart';

@injectable
class ModuleForumWatcherBloc
    extends Bloc<ModuleForumWatcherEvent, ModuleForumWatcherState> {
  final IForumRepository _forumRepository;
  ModuleForumWatcherBloc(this._forumRepository)
      : super(const ModuleForumWatcherState.initial());

  StreamSubscription<Either<DataFailure, List<ForumPost>>>?
      _forumStreamSubscription;

  @override
  Stream<ModuleForumWatcherState> mapEventToState(
    ModuleForumWatcherEvent event,
  ) async* {
    yield* event.map(
      retrieveForumsStarted: (e) async* {
        yield const ModuleForumWatcherState.loadInProgress();

        await _forumStreamSubscription?.cancel();

        _forumStreamSubscription = _forumRepository
            .retrieveModuleForums(e.moduleCode, e.sortedBy)
            .listen((failureOrForums) =>
                add(ModuleForumWatcherEvent.forumsReceived(failureOrForums)));
      },
      forumsReceived: (e) async* {
        yield e.failureOrForums.fold(
            (f) => ModuleForumWatcherState.loadFailure(f),
            (forums) => ModuleForumWatcherState.loadSuccess(forums));
      },
    );
  }

  @override
  Future<void> close() async {
    await _forumStreamSubscription?.cancel();
    return super.close();
  }
}
