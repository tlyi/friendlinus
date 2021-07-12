import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:friendlinus/application/chats/location_chat_form/location_chat_form_bloc.dart';
import 'package:friendlinus/presentation/routes/router.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:friendlinus/domain/core/constants.dart' as constants;

class LocationChatForm extends StatelessWidget {
  const LocationChatForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LocationChatFormBloc, LocationChatFormState>(
      listener: (context, state) {
        state.createFailureOrSuccessOption.fold(
            () {},
            (either) => either.fold((failure) {
                  FlushbarHelper.createError(
                      message: failure.map(
                          unexpected: (_) => 'Unexpected error',
                          insufficientPermission: (_) =>
                              'Insufficient permission',
                          unableToUpdate: (_) => 'Unable to update'));
                }, (_) {
                  print('created chat');
                  return context.popRoute();
                }));
        state.failureOrCurrentLocation.fold(
          (failure) {
            return FlushbarHelper.createError(
                message: failure.map(
                    insufficientPermission: (_) => '',
                    permissionDeniedForever: (_) => '',
                    serviceNotEnabled: (_) => 'Location service not enabled',
                    unexpected: (_) => 'Unexpected error')).show(context);
          },
          (_) {},
        );
      },
      builder: (context, state) {
        return Form(
            autovalidateMode: state.showErrorMessages
                ? AutovalidateMode.always
                : AutovalidateMode.disabled,
            child: Container(
                margin: const EdgeInsets.all(30.0),
                child:
                    Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
                  const _BuildTitle(),
                  const SizedBox(height: 15),
                  const _BuildIntroMessage(),
                  const SizedBox(height: 15),
                  _BuildLocationButton(),
                  _BuildSaveButton(),
                ])));
      },
    );
  }
}

class _BuildTitle extends StatelessWidget {
  const _BuildTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        labelText: 'Chat Title',
      ),
      autocorrect: false,
      onChanged: (value) {
        context
            .read<LocationChatFormBloc>()
            .add(LocationChatFormEvent.titleChanged(value));
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: (_) {
        return context
            .read<LocationChatFormBloc>()
            .state
            .locationChat
            .chatTitle
            .value
            .fold(
                (f) => f.maybeMap(
                    emptyString: (_) => 'Title cannot be empty',
                    exceedingLength: (_) =>
                        'Title too long, maximum of 25 characters only',
                    orElse: () => null),
                (_) => null);
      },
    );
  }
}

class _BuildIntroMessage extends StatelessWidget {
  const _BuildIntroMessage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.multiline,
      maxLines: null,
      minLines: 5, //For the TextFormField height
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        labelText: 'Send an intro message to others in the chat!',
      ),
      autocorrect: false,
      onChanged: (value) {
        context
            .read<LocationChatFormBloc>()
            .add(LocationChatFormEvent.messageChanged(value));
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: (value) {
        return context
            .read<LocationChatFormBloc>()
            .state
            .introMessage
            .value
            .fold(
                (f) => f.maybeMap(
                    exceedingLength: (_) =>
                        'Message too long, maximum of 1000 characters only',
                    orElse: () => null),
                (_) => null);
      },
    );
  }
}

class _BuildLocationButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      margin: const EdgeInsets.only(top: 20.0),
      child: ElevatedButton(
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(constants.THEME_BLUE)),
          onPressed: () {
            context
                .read<LocationChatFormBloc>()
                .add(const LocationChatFormEvent.locationSet());
          },
          child: const Text(
            "Get Location",
            style: TextStyle(fontSize: 16),
          )),
    );
  }
}

class _BuildSaveButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      margin: const EdgeInsets.only(top: 20.0),
      child: ElevatedButton(
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(constants.THEME_BLUE)),
          onPressed: () {
            print('click');
            context
                .read<LocationChatFormBloc>()
                .add(const LocationChatFormEvent.createdChat());
          },
          child: const Text(
            "Create Chat",
            style: TextStyle(fontSize: 16),
          )),
    );
  }
}
