import 'dart:async';

import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:friendlinus/application/chats/chat_bloc.dart';
import 'package:friendlinus/application/chats/chat_watcher/chat_watcher_bloc.dart';
import 'package:friendlinus/presentation/chats/chat_list/chat_list_page.dart';
import 'package:intl/intl.dart';
import 'package:friendlinus/presentation/routes/router.gr.dart';
import 'package:auto_route/auto_route.dart';

class ChatList extends StatelessWidget {
  const ChatList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ChatWatcherBloc, ChatWatcherState>(
        listener: (context, state) {
      // TODO: implement listener: when click on chat, navigate
    }, builder: (context, state) {
      return state.map(
          initial: (_) => Container(),
          loadInProgress: (_) => const Scaffold(
                body: Center(
                  child: CircularProgressIndicator(),
                ),
              ),
          loadSuccess: (state) {
            return ListView.builder(
              itemCount: state.chats.length,
              itemBuilder: (context, index) {
                final chat = state.chats[index];
                final profile = state.profiles[index];
                return Card(
                  child: ListTile(
                    leading: CircleAvatar(
                      radius: 20,
                      backgroundImage: NetworkImage(profile.photoUrl),
                    ),
                    title: Text(profile.username.getOrCrash()),
                    subtitle: Text(chat.lastMessage),
                    trailing: Text(getTime(chat.timestamp)),
                    onTap: () {
                      context.pushRoute(ConvoRoute(
                          convoId: chat.userIdsCombined,
                          senderProfile: profile));
                    },
                  ),
                );
              },
            );
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
    });
  }
}

String getTime(String timestamp) {
  final DateTime dateTime =
      DateTime.fromMillisecondsSinceEpoch(int.parse(timestamp));

  String timeAgo(DateTime d) {
    Duration diff = DateTime.now().difference(d);
    if (diff.inDays > 365) {
      return "${(diff.inDays / 365).floor()} ${(diff.inDays / 365).floor() == 1 ? "year" : "years"} ago";
    }
    if (diff.inDays > 30) {
      return "${(diff.inDays / 30).floor()} ${(diff.inDays / 30).floor() == 1 ? "month" : "months"} ago";
    }
    if (diff.inDays > 7) {
      return "${(diff.inDays / 7).floor()} ${(diff.inDays / 7).floor() == 1 ? "week" : "weeks"} ago";
    }
    if (diff.inDays > 0) {
      return "${diff.inDays} ${diff.inDays == 1 ? "day" : "days"} ago";
    }
    return DateFormat('jm').format(d);
  }

  return timeAgo(dateTime);
}
