import 'package:another_flushbar/flushbar_helper.dart';
import 'package:bubble/bubble.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:friendlinus/application/chats/convo_actor/convo_actor_bloc.dart';
import 'package:friendlinus/application/chats/convo_watcher/convo_watcher_bloc.dart';
import 'package:friendlinus/domain/data/chats/chat_message/chat_message.dart';
import 'package:friendlinus/domain/data/profile/profile.dart';
import 'package:friendlinus/domain/core/constants.dart' as constants;
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
        loadMessagesInProgress: (_) => const Scaffold(
          body: Center(
            child: CircularProgressIndicator(),
          ),
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
                    child: Column(children: [
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            message.messageBody.getOrCrash(),
                            style: const TextStyle(fontSize: 15),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10, top: 10),
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
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, top: 10),
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

String getTime(String timestamp) {
  final DateTime dateTime =
      DateTime.fromMillisecondsSinceEpoch(int.parse(timestamp));

  String timeAgo(DateTime d) {
    Duration diff = DateTime.now().difference(d);
    if (diff.inDays > 365) {
      return "${(diff.inDays / 365).floor()} ${(diff.inDays / 365).floor() == 1 ? "year" : "years"} ago";
    }
    if (diff.inDays > 30) {
      return "${(diff.inDays / 30).floor()} ${(diff.inDays / 30).floor() == 1 ? "month" : "months"} ago";
    }
    if (diff.inDays > 7) {
      return "${(diff.inDays / 7).floor()} ${(diff.inDays / 7).floor() == 1 ? "week" : "weeks"} ago";
    }
    if (diff.inDays > 0) {
      return "${diff.inDays} ${diff.inDays == 1 ? "day" : "days"} ago";
    }
    return DateFormat('jm').format(d);
  }

  return timeAgo(dateTime);
}
