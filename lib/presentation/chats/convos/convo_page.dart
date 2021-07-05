import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:friendlinus/application/chats/convo_watcher/convo_watcher_bloc.dart';
import 'package:friendlinus/application/chats/convo_actor/convo_actor_bloc.dart';
import 'package:friendlinus/domain/data/profile/profile.dart';
import 'package:friendlinus/injection.dart';
import 'package:friendlinus/presentation/chats/convos/widgets/convo_actions.dart';
import 'package:friendlinus/presentation/chats/convos/widgets/convo_messages.dart';
import 'package:friendlinus/presentation/core/app_bar.dart';
import 'package:friendlinus/presentation/routes/router.gr.dart';
import 'package:auto_route/auto_route.dart';

class ConvoPage extends StatelessWidget {
  final String convoId;
  final Profile senderProfile;
  const ConvoPage(
      {Key? key, required this.convoId, required this.senderProfile})
      : super(key: key);

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
      child: BlocBuilder<ConvoWatcherBloc, ConvoWatcherState>(
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
                centerTitle: true,
                backgroundColor: Colors.white,
                leading: IconButton(
                  icon: const Icon(Icons.arrow_back, color: Colors.grey),
                  onPressed: () {
                    context.popRoute();
                  },
                ),
                title: GestureDetector(
                  onTap: () async {
                    context
                        .read<ConvoWatcherBloc>()
                        .add(const ConvoWatcherEvent.retrieveConvoEnded());
                    await context.pushRoute(
                        OtherProfileRoute(userProfile: senderProfile));
                    context
                        .read<ConvoWatcherBloc>()
                        .add(ConvoWatcherEvent.retrieveConvoStarted(convoId));
                  },
                  child: Text(
                    senderProfile.username.getOrCrash(),
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 20.0,
                    ),
                  ),
                ),
                actions: [
                  GestureDetector(
                    onTap: () async {
                      context
                          .read<ConvoWatcherBloc>()
                          .add(const ConvoWatcherEvent.retrieveConvoEnded());
                      await context.pushRoute(
                          OtherProfileRoute(userProfile: senderProfile));
                      context
                          .read<ConvoWatcherBloc>()
                          .add(ConvoWatcherEvent.retrieveConvoStarted(convoId));
                    },
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(
                        senderProfile.photoUrl,
                      ),
                      backgroundColor: Colors.white,
                      radius: 23.0,
                    ),
                  ),
                  const SizedBox(width: 10),
                ]),
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
          );
        },
      ),
    );
  }
}
