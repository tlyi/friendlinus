import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:friendlinus/application/forum/forum_actor/forum_actor_bloc.dart';
import 'package:friendlinus/application/forum/forum_post_watcher/forum_post_watcher_bloc.dart';
import 'package:friendlinus/domain/data/forum/forum_post.dart';
import 'package:friendlinus/injection.dart';
import 'package:friendlinus/presentation/core/app_bar.dart';
import 'package:friendlinus/presentation/core/nav_bar.dart';
import 'package:friendlinus/presentation/forum/forum_page/widgets/forum_body.dart';

class ForumPage extends StatelessWidget {
  final String forumId;
  const ForumPage({Key? key, required this.forumId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(
              create: (context) => getIt<ForumPostWatcherBloc>()
                ..add(ForumPostWatcherEvent.retrieveForumPostStarted(forumId))),
          BlocProvider(
              create: (context) => getIt<ForumActorBloc>()
                ..add(const ForumActorEvent.started())),
        ],
        child: Scaffold(
            
            bottomNavigationBar: const NavigationBar(),
            body: Container(
                alignment: Alignment.topCenter,
                child: SingleChildScrollView(
                    child: ConstrainedBox(
                        constraints: BoxConstraints(
                          maxHeight: MediaQuery.of(context).size.height -
                              (MediaQuery.of(context).padding.top +
                                  kToolbarHeight),
                        ),
                        child: ForumBody())))));
  }
}
