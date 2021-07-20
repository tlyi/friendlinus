part of 'module_feed_bloc.dart';

@freezed
class ModuleFeedState with _$ModuleFeedState {
  const factory ModuleFeedState.initial() = _Initial;
  const factory ModuleFeedState.loadInProgress() = _LoadInProgress;
  const factory ModuleFeedState.loadSuccess(List<ForumPost> forums) =
      _LoadSuccess;
  const factory ModuleFeedState.loadLike(List<ForumPost> forums) = _LoadLike;
  const factory ModuleFeedState.loadFailure(DataFailure dataFailure) =
      _LoadFailure;
  const factory ModuleFeedState.clear() = _Clear;
}
