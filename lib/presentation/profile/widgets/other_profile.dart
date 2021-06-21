import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:friendlinus/application/chats/chat_bloc.dart';
import 'package:friendlinus/domain/data/profile/profile.dart';

class OtherProfile extends StatelessWidget {
  final Profile userProfile;
  const OtherProfile({Key? key, required Profile this.userProfile})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChatBloc, ChatState>(
      builder: (context, state) {
        return Column(
          children: [
            ElevatedButton(
              onPressed: () {
                context
                    .read<ChatBloc>()
                    .add(ChatEvent.chatStarted(userProfile.uuid));
              }, //navigate to chat page
              child: Text('Send chat to ${userProfile.username.getOrCrash()}'),
            )
          ],
        );
      },
    );
  }
}
