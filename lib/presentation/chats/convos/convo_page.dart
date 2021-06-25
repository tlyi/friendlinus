import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:friendlinus/application/chats/convo_watcher/convo_watcher_bloc.dart';
import 'package:friendlinus/application/chats/convo_actor/convo_actor_bloc.dart';
import 'package:friendlinus/domain/data/profile/profile.dart';
import 'package:friendlinus/injection.dart';
import 'package:friendlinus/presentation/chats/convos/widgets/convo_actions.dart';
import 'package:friendlinus/presentation/chats/convos/widgets/convo_messages.dart';
import 'package:friendlinus/presentation/core/app_bar.dart';

class ConvoPage extends StatelessWidget {
  final String convoId;
  final Profile senderProfile;
  const ConvoPage(
      {Key? key, required this.convoId, required this.senderProfile})
      : super(key: key); //yeet convoid in

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<ConvoWatcherBloc>()
            ..add(ConvoWatcherEvent.retrieveConvoStarted(convoId)),
        ),
        BlocProvider(
          create: (context) => getIt<ConvoActorBloc>()
            ..add(ConvoActorEvent.convoOpened(convoId)),
        ),
      ],
      child: Scaffold(
        appBar: appBar(
            context: context,
            header: senderProfile.username.getOrCrash(),
            canGoBack: true),
        body: Column(children: [
          Expanded(
            child: ClipRRect(
              child: ConvoMessages(
                convoId: convoId,
                senderProfile: senderProfile,
              ),
            ),
          ),
          ConvoActions(convoId: convoId, senderProfile: senderProfile),
        ]),
      ),
    );
  }
}
