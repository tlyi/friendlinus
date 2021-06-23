import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:friendlinus/application/chats/convo_watcher/convo_watcher_bloc.dart';
import 'package:friendlinus/application/chats/convo_actor/convo_actor_bloc.dart';
import 'package:friendlinus/domain/data/profile/profile.dart';
import 'package:friendlinus/injection.dart';
import 'package:friendlinus/presentation/chats/convos/widgets/convo.dart';
import 'package:friendlinus/presentation/core/app_bar.dart';

class ConvoPage extends StatelessWidget {
  final String convoId;
  final Profile senderProfile;
  const ConvoPage(
      {Key? key, required this.convoId, required this.senderProfile})
      : super(key: key); //yeet convoid in

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(
          context: context,
          header: senderProfile.username.getOrCrash(),
          canGoBack: true),
      body: Container(
        alignment: Alignment.topCenter,
        child: SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(
                maxHeight: MediaQuery.of(context).size.height -
                    (MediaQuery.of(context).padding.top + kToolbarHeight)),
            child: MultiBlocProvider(
              providers: [
                BlocProvider(
                  create: (context) =>
                      getIt<ConvoWatcherBloc>(), //to revisit: what bloc to give
                ),
                BlocProvider(
                  create: (context) => getIt<ConvoActorBloc>()
                    ..add(ConvoActorEvent.convoOpened(convoId)),
                )
              ],
              child: Convo(convoId: convoId, senderProfile: senderProfile),
            ),
          ),
        ),
      ),
    );
  }
}
