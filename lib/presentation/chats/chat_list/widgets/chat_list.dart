import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:friendlinus/application/chats/chat_bloc.dart';

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
          }, (chats) {});
        }
      },
    );
  }
}
