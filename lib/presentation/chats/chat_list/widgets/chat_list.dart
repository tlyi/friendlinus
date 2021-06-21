import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:friendlinus/application/chats/chat_bloc.dart';
import 'package:friendlinus/presentation/chats/chat_list/chat_list_page.dart';

class ChatList extends StatelessWidget {
  const ChatList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ChatBloc, ChatState>(
      listener: (context, state) {
        // TODO: implement listener: when click on chat, navigate
      },
      builder: (context, state) {
        if (state.isLoading) {
          return const CircularProgressIndicator();
        } else {
          context.read<ChatBloc>().state.userChats.fold((failure) {
            FlushbarHelper.createError(
              message: failure.map(
                  unexpected: (_) => 'Unexpected error',
                  insufficientPermission: (_) => 'Insufficient permission',
                  unableToUpdate: (_) => 'Unable to update'),
            ).show(context);
          }, (chats) {
            return ListView.builder(
              itemCount: chats.length,
              itemBuilder: (context, index) {
                final chat = chats[index];
                return Card(
                  child: ListTile(
                    title:
                        Text(chat.messagePreview.value.getOrElse(() => 'Wtf')),
                    onTap: () {
                      print('tapped');
                      //TODO: Go into convo
                    },
                  ),
                );
              },
            );
          });
        }
        return Container();
      },
    );
  }
}
