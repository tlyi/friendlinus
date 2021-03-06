import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:friendlinus/application/chats/location_chat_form/location_chat_form_bloc.dart';
import 'package:friendlinus/injection.dart';
import 'package:friendlinus/presentation/core/app_bar.dart';
import 'package:friendlinus/presentation/core/dismiss_keyboard.dart';
import 'package:friendlinus/presentation/location_chats/location_chat_list/widgets/location_chat_form.dart';

class LocationChatFormPage extends StatelessWidget {
  const LocationChatFormPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<LocationChatFormBloc>(),
      child: Scaffold(
        appBar: appBar(
          context: context,
          header: 'Create Location Chat',
          canClose: true,
          notifications: false,
        ),
        body: DismissKeyboard(
            child: Container(
          alignment: Alignment.topCenter,
          child: const SingleChildScrollView(
            child: LocationChatForm(),
          ),
        )),
      ),
    );
  }
}
