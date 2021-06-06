import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:friendlinus/application/profile/profile_form/bloc/profile_form_bloc.dart';
import 'package:friendlinus/presentation/routes/router.gr.dart';
import 'package:auto_route/auto_route.dart';

class RegisterProfileForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ProfileFormBloc, ProfileFormState>(
      listener: (context, state) {
        state.saveFailureOrSuccessOption.fold(
            () {},
            (either) => either.fold((failure) {
                  FlushbarHelper.createError(
                    message: failure.map(
                        unexpected: (_) => 'Unexpected error',
                        insufficientPermission: (_) =>
                            'Insufficient permission',
                        unableToUpdate: (_) => 'Unable to update'),
                  ).show(context);
                }, (_) {
                  context.replaceRoute(const HomeRoute());
                }));
      },
      builder: (context, state) {
        return Form(
          autovalidateMode: AutovalidateMode.always,
          child: Scaffold(
            body: Container(
              margin: const EdgeInsets.all(30.0),
              alignment: Alignment.center,
              child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
                _BuildUsername(),
                const SizedBox(height: 15),
                _BuildCourse(),
                const SizedBox(height: 15),
                _BuildBio(),
                const SizedBox(height: 15),
                _BuildModule(),
                const SizedBox(height: 15),
                _BuildSaveButton(),
              ]),
            ),
          ),
        );
      },
    );
  }
}

class _BuildUsername extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileFormBloc, ProfileFormState>(
      builder: (context, state) {
        return TextFormField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              labelText: 'Username',
            ),
            autocorrect: false,
            onChanged: (value) {
              context
                  .read<ProfileFormBloc>()
                  .add(ProfileFormEvent.usernameChanged(value));
            },
            inputFormatters: [
              FilteringTextInputFormatter.deny(
                  RegExp(r"\s\b|\b\s")) //Prevents whitespace
            ]);
      },
    );
  }
}

class _BuildCourse extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileFormBloc, ProfileFormState>(
      builder: (context, state) {
        return TextFormField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              labelText: 'Course',
            ),
            autocorrect: false,
            onChanged: (value) {
              context
                  .read<ProfileFormBloc>()
                  .add(ProfileFormEvent.courseChanged(value));
            },
            inputFormatters: [
              FilteringTextInputFormatter.deny(
                  RegExp(r"\s\b|\b\s")) //Prevents whitespace
            ]);
      },
    );
  }
}

class _BuildBio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileFormBloc, ProfileFormState>(
      builder: (context, state) {
        return TextFormField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              labelText: 'Bio',
            ),
            autocorrect: false,
            onChanged: (value) {
              context
                  .read<ProfileFormBloc>()
                  .add(ProfileFormEvent.bioChanged(value));
            },
            inputFormatters: [
              FilteringTextInputFormatter.deny(
                  RegExp(r"\s\b|\b\s")) //Prevents whitespace
            ]);
      },
    );
  }
}

class _BuildModule extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileFormBloc, ProfileFormState>(
      builder: (context, state) {
        return TextFormField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              labelText: 'Module',
            ),
            autocorrect: false,
            onChanged: (value) {
              context
                  .read<ProfileFormBloc>()
                  .add(ProfileFormEvent.moduleChanged(value));
            },
            inputFormatters: [
              FilteringTextInputFormatter.deny(
                  RegExp(r"\s\b|\b\s")) //Prevents whitespace
            ]);
      },
    );
  }
}

class _BuildSaveButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileFormBloc, ProfileFormState>(
      builder: (context, state) {
        return Container(
          margin: const EdgeInsets.only(top: 20.0),
          width: MediaQuery.of(context).size.width * 0.62,
          child: ElevatedButton(
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(Color(0xFF7BA5BB))),
              child: const Text("Save Info"),
              onPressed: () {
                context.read<ProfileFormBloc>().add(
                      const ProfileFormEvent.saved(),
                    );
              }),
        );
      },
    );
  }
}
