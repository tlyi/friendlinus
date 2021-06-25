import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:friendlinus/application/forum/forum_watcher/forum_watcher_bloc.dart';
import 'package:friendlinus/presentation/forum/forum_overview/widgets/forum_card.dart';

class ForumOverviewBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ForumWatcherBloc, ForumWatcherState>(
      listener: (context, state) {
        // TODO: implement listener: when click on forum, navigate
      },
      builder: (context, state) {
        return ListView.builder(
          itemBuilder: (context, index) {
            return const ForumCard(title: 'Forum Title');
          },
        );
      },
    );
  }
}
