import 'dart:async';

import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:friendlinus/application/chats/chat_bloc.dart';
import 'package:friendlinus/application/chats/chat_watcher/chat_watcher_bloc.dart';
import 'package:friendlinus/presentation/chats/chat_list/chat_list_page.dart';
import 'package:friendlinus/presentation/core/get_time.dart';
import 'package:intl/intl.dart';
import 'package:friendlinus/presentation/routes/router.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:friendlinus/domain/core/constants.dart' as constants;

class ChatList extends StatelessWidget {
  const ChatList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChatWatcherBloc, ChatWatcherState>(
        builder: (context, state) {
      return state.map(
          initial: (_) => Container(),
          loadInProgress: (_) => const Center(
                child: CircularProgressIndicator(),
              ),
          loadSuccess: (state) {
            if (state.chats.isEmpty) {
              return const Center(
                child: Text('No chats yet'),
              );
            } else {
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
                      subtitle: Text(
                        chat.lastMessage,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      trailing: Row(mainAxisSize: MainAxisSize.min, children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 5),
                          child: chat.lastSenderId == profile.uuid
                              ? chat.lastMessageRead
                                  ? Container()
                                  : const Icon(MdiIcons.checkboxBlankCircle,
                                      size: 15, color: constants.THEME_BLUE)
                              : chat.lastMessageRead
                                  ? const Icon(MdiIcons.checkAll,
                                      size: 17, color: constants.THEME_BLUE)
                                  : const Icon(MdiIcons.check, size: 17),
                        ),
                        Text(getTime(chat.timestamp))
                      ]),
                      onTap: () {
                        context.pushRoute(ConvoRoute(otherProfile: profile));
                      },
                    ),
                  );
                },
              );
            }
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
