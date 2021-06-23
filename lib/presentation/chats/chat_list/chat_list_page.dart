import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:friendlinus/application/chats/chat_bloc.dart';
import 'package:friendlinus/application/chats/chat_watcher/chat_watcher_bloc.dart';
import 'package:friendlinus/application/profile/profile_form/profile_form_bloc.dart';
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
          child: SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                maxHeight: MediaQuery.of(context).size.height -
                    (MediaQuery.of(context).padding.top + kToolbarHeight),
              ),
              child: BlocProvider(
                create: (context) => getIt<ChatWatcherBloc>()
                  ..add(const ChatWatcherEvent.retrieveChatsStarted()),
                child: ChatList(),
              ),
            ),
          ),
        ));
  }
}
