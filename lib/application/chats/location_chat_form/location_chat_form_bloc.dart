import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'location_chat_form_event.dart';
part 'location_chat_form_state.dart';
part 'location_chat_form_bloc.freezed.dart';

class LocationChatFormBloc extends Bloc<LocationChatFormEvent, LocationChatFormState> {
  LocationChatFormBloc() : super(_Initial());

  @override
  Stream<LocationChatFormState> mapEventToState(
    LocationChatFormEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
