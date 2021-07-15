import 'package:another_flushbar/flushbar_helper.dart';
import 'package:bubble/bubble.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:friendlinus/application/chats/location_convo_watcher/location_convo_watcher_bloc.dart';
import 'package:friendlinus/domain/data/chats/chat_message/chat_message.dart';
import 'package:friendlinus/domain/data/profile/profile.dart';
import 'package:friendlinus/domain/core/constants.dart' as constants;
import 'package:friendlinus/presentation/core/get_time.dart';
import 'package:friendlinus/presentation/routes/router.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:intl/intl.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class LocationConvoMessages extends StatelessWidget {
  final String convoId;
  final String ownId;
  const LocationConvoMessages(
      {Key? key, required this.convoId, required this.ownId})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LocationConvoWatcherBloc, LocationConvoWatcherState>(
        builder: (context, state) {
      return state.map(
        initial: (_) => Container(),
        loadMessagesInProgress: (_) => const Center(
          child: CircularProgressIndicator(),
        ),
        loadMessagesSuccess: (state) {
          if (state.messages.isEmpty) {
            return const Center(child: Text('No messages yet'));
          } else {
            return ListView.builder(
              reverse: true,
              shrinkWrap: true,
              physics: const ScrollPhysics(),
              padding: const EdgeInsets.only(top: 10, bottom: 10),
              itemCount: state.messages.length,
              itemBuilder: (context, index) {
                final message = state.messages[index];
                final profile = state.profiles[index];
                // to check: if next profile is diff, then put pic
                final isFirstFromThisSender =
                    index == (state.messages.length - 1) ||
                        state.messages[index + 1].senderId != message.senderId;
                final isLastFromThisSender = index == 0 ||
                    state.messages[index - 1].senderId != message.senderId;
                final isOtherSender = message.senderId != ownId;
                return Container(
                  padding: const EdgeInsets.only(
                      left: 14, right: 14, top: 5, bottom: 5),
                  child: Align(
                    alignment:
                        isOtherSender ? Alignment.topLeft : Alignment.topRight,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        if (isOtherSender)
                          SizedBox(
                            width: 40,
                            child: isLastFromThisSender
                                ? GestureDetector(
                                    onTap: () async {
                                      context
                                          .read<LocationConvoWatcherBloc>()
                                          .add(const LocationConvoWatcherEvent
                                              .retrieveConvoEnded());
                                      await context.pushRoute(OtherProfileRoute(
                                          userProfile: profile));
                                      context
                                          .read<LocationConvoWatcherBloc>()
                                          .add(LocationConvoWatcherEvent
                                              .retrieveConvoStarted(convoId));
                                    },
                                    child: CircleAvatar(
                                        backgroundImage:
                                            NetworkImage(profile.photoUrl),
                                        backgroundColor: Colors.white,
                                        radius: 20),
                                  )
                                : const SizedBox(),
                          ),
                        Flexible(
                          child: Bubble(
                            radius: const Radius.circular(10),
                            color: isOtherSender
                                ? Colors.grey[400]
                                : constants.THEME_BLUE,
                            padding: const BubbleEdges.all(8),
                            nip: isOtherSender
                                ? BubbleNip.leftBottom
                                : BubbleNip.rightBottom,
                            showNip: index == 0 ||
                                state.messages[index - 1].senderId !=
                                    message.senderId,
                            child: message.photoUrl != ''
                                ? Container(
                                    width: 200,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        if (isFirstFromThisSender &&
                                            isOtherSender)
                                          Text(
                                            profile.username.getOrCrash(),
                                            style: const TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.w700),
                                          ),
                                        if (isFirstFromThisSender &&
                                            isOtherSender)
                                          const SizedBox(height: 5),
                                        FadeInImage(
                                          fit: BoxFit.contain,
                                          image: NetworkImage(message.photoUrl),
                                          placeholder: const AssetImage(
                                              'images/loading_image.png'),
                                        ),
                                        if (message.messageBody.getOrCrash() !=
                                            '')
                                          const SizedBox(height: 5),
                                        _CaptionBody(
                                            message: message,
                                            isOtherSender: isOtherSender),
                                      ],
                                    ),
                                  )
                                : _MessageBody(
                                    message: message,
                                    senderProfile: profile,
                                    isOtherSender: isOtherSender,
                                    isFirstFromThisSender:
                                        isFirstFromThisSender,
                                  ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            );
          }
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

class _MessageBody extends StatelessWidget {
  final ChatMessage message;
  final Profile senderProfile;
  final bool isOtherSender;
  final bool isFirstFromThisSender;
  const _MessageBody(
      {Key? key,
      required this.message,
      required this.senderProfile,
      required this.isOtherSender,
      required this.isFirstFromThisSender})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        if (isFirstFromThisSender && isOtherSender)
          Text(
            senderProfile.username.getOrCrash(),
            style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
          ),
        if (isFirstFromThisSender && isOtherSender) SizedBox(height: 5),
        Wrap(
          alignment: WrapAlignment.end,
          runSpacing: -15,
          children: [
            Text(
              message.messageBody.getOrCrash(),
              style: const TextStyle(fontSize: 15),
            ),
            Row(mainAxisSize: MainAxisSize.min, children: [
              Padding(
                padding: const EdgeInsets.only(left: 10, top: 10),
                child: Text(
                  getTime(message.timeSent),
                  style: const TextStyle(fontSize: 10),
                ),
              ),
            ]),
          ],
        ),
      ],
    );
  }
}

class _CaptionBody extends StatelessWidget {
  final ChatMessage message;
  final bool isOtherSender;
  const _CaptionBody(
      {Key? key, required this.message, required this.isOtherSender})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Wrap(
          alignment: WrapAlignment.end,
          runSpacing: -15,
          children: [
            Row(
              children: [
                Expanded(
                  child: Text(
                    message.messageBody.getOrCrash(),
                    style: const TextStyle(fontSize: 15),
                  ),
                ),
              ],
            ),
            Row(mainAxisSize: MainAxisSize.min, children: [
              Padding(
                padding: const EdgeInsets.only(left: 10, top: 10),
                child: Text(
                  getTime(message.timeSent),
                  style: const TextStyle(fontSize: 10),
                ),
              ),
            ]),
          ],
        ),
      ],
    );
  }
}
