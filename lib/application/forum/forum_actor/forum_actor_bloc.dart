import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'forum_actor_event.dart';
part 'forum_actor_state.dart';
part 'forum_actor_bloc.freezed.dart';

class ForumActorBloc extends Bloc<ForumActorEvent, ForumActorState> {
  ForumActorBloc() : super(_Initial());

  @override
  Stream<ForumActorState> mapEventToState(
    ForumActorEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
