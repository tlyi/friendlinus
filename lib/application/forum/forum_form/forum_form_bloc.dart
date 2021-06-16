import 'dart:async';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:friendlinus/domain/data/data_failure.dart';
import 'package:friendlinus/domain/data/forum/forum_post.dart';
import 'package:friendlinus/domain/data/forum/value_objects.dart';
import 'package:friendlinus/presentation/forum/forum_form/widgets/forum_form.dart';

part 'forum_form_event.dart';
part 'forum_form_state.dart';
part 'forum_form_bloc.freezed.dart';

class ForumFormBloc extends Bloc<ForumFormEvent, ForumFormState> {
  ForumFormBloc() : super(ForumFormState.initial());

  @override
  Stream<ForumFormState> mapEventToState(
    ForumFormEvent event,
  ) async* {
    yield* event.map(
      titleChanged: (e) async* {
        yield state.copyWith(
          forumPost: state.forumPost.copyWith(
          title: Title(e.titleStr),
        ));
      },
      tagChanged: (e) async* {
        yield state.copyWith(
          forumPost: state.forumPost.copyWith(
          tag: Tag(e.tagStr),
        ));
      },
      bodyChanged: (e) async* {
        yield state.copyWith(
          forumPost: state.forumPost.copyWith(
          body: Body(e.bodyStr),
        ));
      },
      createdPost: (e) async* {},
      photoAdded: (e) async* {},
    );
  }
}
