import 'package:another_flushbar/flushbar_helper.dart';
import 'package:bubble/bubble.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:friendlinus/application/chats/convo_actor/convo_actor_bloc.dart';
import 'package:friendlinus/application/chats/convo_watcher/convo_watcher_bloc.dart';
import 'package:friendlinus/domain/data/chats/chat_message/chat_message.dart';
import 'package:friendlinus/domain/data/profile/profile.dart';
import 'package:friendlinus/domain/core/constants.dart' as constants;
import 'package:friendlinus/presentation/core/get_time.dart';
import 'package:intl/intl.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class ConvoMessages extends StatelessWidget {
  final String convoId;
  final Profile senderProfile;
  const ConvoMessages(
      {Key? key, required this.convoId, required this.senderProfile})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ConvoWatcherBloc, ConvoWatcherState>(
        builder: (context, state) {
      return state.map(
        initial: (_) => Container(),
        loadMessagesInProgress: (_) => const Center(
          child: CircularProgressIndicator(),
        ),
        loadMessagesSuccess: (state) {
          return ListView.builder(
            reverse: true,
            shrinkWrap: true,
            physics: const ScrollPhysics(),
            padding: const EdgeInsets.only(top: 10, bottom: 10),
            itemCount: state.messages.length,
            itemBuilder: (context, index) {
              final message = state.messages[index];
              final isOtherSender = message.senderId == senderProfile.uuid;
              if (isOtherSender) {
                context
                    .read<ConvoActorBloc>()
                    .add(ConvoActorEvent.messageRead(message.messageId));
              }
              if (index == 0 && isOtherSender) {
                context
                    .read<ConvoActorBloc>()
                    .add(const ConvoActorEvent.lastMessageRead());
              }
              return Container(
                padding: const EdgeInsets.only(
                    left: 14, right: 14, top: 5, bottom: 5),
                child: Align(
                  alignment:
                      isOtherSender ? Alignment.topLeft : Alignment.topRight,
                  child: Bubble(
                    radius: const Radius.circular(10),
                    color:
                        isOtherSender ? Colors.grey[400] : constants.THEME_BLUE,
                    padding: const BubbleEdges.all(8),
                    nip: isOtherSender
                        ? BubbleNip.leftBottom
                        : BubbleNip.rightBottom,
                    showNip: index == 0 ||
                        state.messages[index - 1].senderId != message.senderId,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              if (message.photoUrl != '')
                                Container(
                                  height: 200,
                                  width: 200,
                                  child: FadeInImage(
                                    fit: BoxFit.contain,
                                    image: NetworkImage(message.photoUrl),
                                    placeholder: const AssetImage(
                                        'images/loading_image.png'),
                                  ),
                                ),
                              Row(mainAxisSize: MainAxisSize.min, children: [
                                Flexible(
                                  child: Text(
                                    message.messageBody.getOrCrash(),
                                    style: const TextStyle(fontSize: 15),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 10, top: 10),
                                  child: Text(
                                    getTime(message.timeSent),
                                    style: const TextStyle(fontSize: 10),
                                  ),
                                ),
                                if (!isOtherSender)
                                  Padding(
                                    padding: EdgeInsets.only(left: 5, top: 10),
                                    child: message.read
                                        ? const Icon(MdiIcons.checkAll,
                                            color: Colors.white, size: 15)
                                        : const Icon(MdiIcons.check,
                                            color: Colors.white, size: 15),
                                  ),
                              ]),
                            ]),
                      ],
                    ),
                  ),
                ),
              );
            },
          );
        },
        loadMessagesFailure: (state) {
          FlushbarHelper.createError(
            message: state.dataFailure.map(
                unexpected: (_) => 'Unexpected error',
                insufficientPermission: (_) => 'Insufficient permission',
                unableToUpdate: (_) => 'Unable to update'),
          ).show(context);
          return Container();
        },
      );
    });
  }
}
