part of 'chat_bloc.dart';

@freezed
class ChatState with _$ChatState {
  const factory ChatState.initial() = _Initial;
  const factory ChatState.loadInProgress() = _LoadInProgress;
  const factory ChatState.loadSuccess(Chat chat) = _LoadSuccess;
  const factory ChatState.loadFailure(DataFailure dataFailure) = _LoadFailure;
}
