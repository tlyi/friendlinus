import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:friendlinus/application/chats/chat_watcher/chat_watcher_bloc.dart';
import 'package:friendlinus/injection.dart';
import 'package:friendlinus/presentation/chats/chat_list/widgets/chat_list.dart';
import 'package:friendlinus/presentation/core/app_bar.dart';
import 'package:friendlinus/presentation/core/nav_bar.dart';

class ChatListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: appBar(context: context, header: 'Chats'),
        bottomNavigationBar: const NavigationBar(),
        body: Container(
          alignment: Alignment.topCenter,
          child: BlocProvider(
            create: (context) => getIt<ChatWatcherBloc>()
              ..add(const ChatWatcherEvent.retrieveChatsStarted()),
            child: const ChatList(),
          ),
        ));
  }
}
