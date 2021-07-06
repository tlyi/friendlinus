import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:friendlinus/application/forum/forum_actor/forum_actor_bloc.dart';
import 'package:friendlinus/injection.dart';
import 'package:friendlinus/presentation/core/app_bar.dart';
import 'package:friendlinus/presentation/core/dismiss_keyboard.dart';
import 'package:friendlinus/presentation/core/nav_bar.dart';
import 'package:friendlinus/presentation/forum/forum_page/widgets/comment_form.dart';

class CommentPage extends StatelessWidget {
  final String forumId;
  const CommentPage({Key? key, required this.forumId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          getIt<ForumActorBloc>()..add(const ForumActorEvent.started()),
      child: DismissKeyboard(
        child: Scaffold(
            appBar: appBar(
                context: context,
                header: 'Add Comment',
                canClose: true,
                notifications: false),
            bottomNavigationBar: const NavigationBar(),
            body: Container(
                alignment: Alignment.topCenter,
                child: SingleChildScrollView(
                    child: ConstrainedBox(
                  constraints: BoxConstraints(
                    maxHeight: MediaQuery.of(context).size.height -
                        (MediaQuery.of(context).padding.top + kToolbarHeight),
                  ),
                  child: CommentForm(forumId: forumId),
                )))),
      ),
    );
  }
}
