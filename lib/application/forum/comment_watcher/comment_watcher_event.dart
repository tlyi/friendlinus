part of 'comment_watcher_bloc.dart';

@freezed
class CommentWatcherEvent with _$CommentWatcherEvent {
const factory CommentWatcherEvent.retrieveCommentsStarted(String forumId) =
      _RetrieveCommentsStarted;
  const factory CommentWatcherEvent.commentsReceived(
      Either<DataFailure, List<Comment>> failureOrComments) = _CommentsReceived;
}