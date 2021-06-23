import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:friendlinus/application/chats/convo_actor/convo_actor_bloc.dart';
import 'package:friendlinus/domain/data/profile/profile.dart';

class Convo extends StatelessWidget {
  final String convoId;
  final Profile senderProfile;
  const Convo({Key? key, required this.convoId, required this.senderProfile})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ConvoActorBloc, ConvoActorState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        return Stack(
          children: [
            _BuildMessageField(),
            _BuildSendButton(),
          ],
        );
      },
    );
  }
}

class _BuildMessageField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: Alignment.bottomLeft,
        child: Container(
            padding: EdgeInsets.all(10),
            color: Colors.white,
            height: 60,
            child: Row(
              children: [
                Container(
                  height: 35,
                  width: 35,
                  decoration: BoxDecoration(
                    color: Colors.lightBlue,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: IconButton(
                    icon: const Icon(
                      Icons.image_outlined,
                      color: Colors.white,
                      size: 20,
                    ),
                    onPressed: () {},
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                Expanded(
                  child: TextField(
                    decoration: const InputDecoration(
                      hintText: "Message",
                      hintStyle: TextStyle(color: Colors.black54),
                      border: InputBorder.none,
                    ),
                    onSubmitted: (message) async {
                      context
                          .read<ConvoActorBloc>()
                          .add(ConvoActorEvent.messageChanged(message));
                    },
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                Container(
                  height: 35,
                  width: 35,
                  decoration: BoxDecoration(
                    color: Colors.blueGrey,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: IconButton(
                    icon: const Icon(
                      Icons.send,
                      color: Colors.white,
                      size: 18,
                    ),
                    onPressed: () {},
                  ),
                ),
              ],
            )));
  }
}

class _BuildSendButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          context
              .read<ConvoActorBloc>()
              .add(const ConvoActorEvent.messageSent());
        },
        child: Text('Send'));
  }
}
