import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:friendlinus/application/chats/chat_bloc.dart';
import 'package:friendlinus/domain/data/chats/chat.dart';
import 'package:friendlinus/domain/data/profile/profile.dart';
import 'package:friendlinus/injection.dart';
import 'package:friendlinus/presentation/chats/convos/convo_page.dart';
import 'package:friendlinus/presentation/routes/router.gr.dart';
import 'package:auto_route/auto_route.dart';

class ConvoSplashPage extends StatelessWidget {
  final Profile senderProfile;
  const ConvoSplashPage({Key? key, required this.senderProfile})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          getIt<ChatBloc>()..add(ChatEvent.chatStarted(senderProfile.uuid)),
      child: BlocBuilder<ChatBloc, ChatState>(builder: (context, state) {
        return state.map(
            initial: (_) => Container(),
            loadInProgress: (_) => const Scaffold(
                  body: Center(
                    child: CircularProgressIndicator(),
                  ),
                ),
            loadSuccess: (state) {
              return ConvoPage(
                convoId: state.chat.userIdsCombined,
                senderProfile: senderProfile,
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
      }),
    );
  }
}
