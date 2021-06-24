import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:friendlinus/application/forum/forum_watcher/forum_watcher_bloc.dart';
import 'package:friendlinus/presentation/core/get_time.dart';

class ForumOverviewBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ForumWatcherBloc, ForumWatcherState>(
      listener: (context, state) {
        // TODO: implement listener: when click on forum, navigate
      },
      builder: (context, state) {
        return state.map(
            initial: (_) => Container(),
            loadInProgress: (_) => const Scaffold(
                  body: Center(
                    child: CircularProgressIndicator(),
                  ),
                ),
            loadSuccess: (state) {
              if (state.forums.length == 0) {
                return Container();
              } else {
                return ListView.builder(
                    itemCount: state.forums.length,
                    itemBuilder: (context, index) {
                      final forum = state.forums[index];
                      return Card(
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(
                              color: Color(0xFF7BA5BB), width: 2.0),
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: ListTile(
                          leading: Column(
                            children: <Widget>[
                              IconButton(
                                  onPressed: () {
                                    //Implement LIKE
                                  },
                                  icon: const Icon(Icons.arrow_drop_up)),
                              Text(forum.likes.toString()),
                            ],
                          ),
                          title: Text(forum.title
                              .getOrCrash()), //Should add forum preview??
                          trailing: Text(getTime(forum.timestamp)),
                        ),
                      );
                    });
              }
            },
            loadFailure: (state) {
              return Container();
            });
      },
    );
  }
}
