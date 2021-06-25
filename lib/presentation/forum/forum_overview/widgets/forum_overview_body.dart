import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:friendlinus/application/forum/forum_watcher/forum_watcher_bloc.dart';
import 'package:friendlinus/presentation/core/get_time.dart';
import 'package:auto_route/auto_route.dart';
import 'package:friendlinus/presentation/routes/router.gr.dart';

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
                        //isThreeLine: true,
                        leading: SizedBox(
                          //DO NOT ADJUST SPACING :')
                          height: 40,
                          width: 40,
                          child: Stack(
                            children: <Widget>[
                              SizedBox(
                                height: 24,
                                width: 24,
                                child: IconButton(
                                  padding: const EdgeInsets.all(0),
                                  onPressed: () {
                                    //Implement LIKE and UNLIKE
                                  },
                                  icon: const Icon(Icons.arrow_drop_up),
                                ),
                              ),
                              Positioned(
                                  left: 8,
                                  bottom: 3,
                                  child: Text(forum.likes.toString())),
                            ],
                          ),
                        ),

                        title: Text(forum.title.getOrCrash()),
                        subtitle: Text(
                          forum.body.getOrCrash(),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                        trailing: Text(getTime(forum.timestamp)),
                        isThreeLine: true,

                        onTap: () {
                          context.pushRoute(ForumRoute(forum: forum));
                        },
                      ),
                    );
                  });
            },
            loadFailure: (state) {
              FlushbarHelper.createError(
                message: state.dataFailure.map(
                    unexpected: (_) => 'Unexpected error',
                    insufficientPermission: (_) => 'Insufficient permission',
                    unableToUpdate: (_) => 'Unable to update'),
              ).show(context);
              return Container();
            });
      },
    );
  }
}
