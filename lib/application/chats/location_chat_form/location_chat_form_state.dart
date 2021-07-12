part of 'location_chat_form_bloc.dart';

@freezed
class LocationChatFormState with _$LocationChatFormState {
  const factory LocationChatFormState({
    required LocationChat locationChat,
    required bool isSaving,
    required <Either<DataFailure, Position>> failureOrCurrentLocation,
    required Option<Either<DataFailure, Unit>> createFailureOrSuccessOption,

  }) = _LocationChatFormState;

  factory LocationChatFormState.initial() => LocationChatFormState(
        locationChat: LocationChat.empty(),
        isSaving: false,
        failureOrCurrentLocation: right(''),
        createFailureOrSuccessOption: none(),

      );
}
