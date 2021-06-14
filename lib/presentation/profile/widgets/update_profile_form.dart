import 'dart:io';
import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:friendlinus/application/profile/profile_form/profile_form_bloc.dart';
import 'package:friendlinus/domain/data/profile/profile.dart';
import 'package:friendlinus/presentation/routes/router.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:image_picker/image_picker.dart';
import 'package:friendlinus/domain/core/constants.dart' as constants;

class UpdateProfileForm extends StatelessWidget {
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
                  context.replaceRoute(const ProfileRoute());
                }));
        state.photoUrl.fold(
            (f) => FlushbarHelper.createError(
                message: 'Error uploading photo to database, try again'),
            (r) => null);
      },
      builder: (context, state) {
        if (state.isLoading) {
          context
              .read<ProfileFormBloc>()
              .add(const ProfileFormEvent.getProfile());
          return const CircularProgressIndicator();
        } else {
          Profile userProfile = context
              .read<ProfileFormBloc>()
              .state
              .currentProfile
              .getOrElse(() {
            FlushbarHelper.createError(message: 'Server error').show(context);
            return Profile.empty();
          });
          return Form(
            autovalidateMode: AutovalidateMode.always,
            child: Container(
              margin: const EdgeInsets.all(30.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  _BuildProfilePicButton(userProfile: userProfile),
                  const SizedBox(height: 20),
                  _BuildUsername(userProfile: userProfile),
                  const SizedBox(height: 15),
                  _BuildCourse(userProfile: userProfile),
                  const SizedBox(height: 15),
                  _BuildBio(userProfile: userProfile),
                  const SizedBox(height: 15),
                  _BuildModule(userProfile: userProfile),
                  const SizedBox(height: 15),
                  _BuildSaveButton(),
                ],
              ),
            ),
          );
        }
      },
    );
  }
}

class _BuildProfilePicButton extends StatelessWidget {
  final Profile userProfile;

  const _BuildProfilePicButton({Key? key, required this.userProfile})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    String prevPhotoUrl = context.read<ProfileFormBloc>().state.photoUrl.getOrElse(() => '');
    return Stack(
      children: <Widget>[
        CircleAvatar(
          maxRadius: 60,
          backgroundImage: prevPhotoUrl == ''
              ? const NetworkImage(constants.DEFAULT_PHOTO_URL)
              : NetworkImage(prevPhotoUrl),
          backgroundColor: Colors.transparent,
        ),
        Positioned(
          bottom: -5,
          right: -5,
          child: Container(
            decoration: const BoxDecoration(shape: BoxShape.circle),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: const Color(0xFF7BA5BB),
                shape: const CircleBorder(),
              ),
              onPressed: () async {
                final picker = ImagePicker();
                File? pickedImage;
                final pickedFile = await picker.getImage(
                  source: ImageSource.gallery,
                  imageQuality: 70,
                );
                if (pickedFile == null) {
                  FlushbarHelper.createError(message: 'No image picked')
                      .show(context);
                } else {
                  pickedImage = File(pickedFile.path);
                  context
                      .read<ProfileFormBloc>()
                      .add(ProfileFormEvent.photoChanged(pickedImage));
                }
              },
              child: const Text(
                '+',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class _BuildUsername extends StatelessWidget {
  final Profile userProfile;

  const _BuildUsername({Key? key, required this.userProfile}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileFormBloc, ProfileFormState>(
      builder: (context, state) {
        return TextFormField(
            initialValue: userProfile.username.getOrCrash(),
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
            autovalidateMode: AutovalidateMode.onUserInteraction,
            validator: (_) => context
                .read<ProfileFormBloc>()
                .state
                .profile
                .username
                .value
                .fold(
                  (f) => f.maybeMap(
                      invalidUsernameFormat: (_) =>
                          'Only lowercase alphanumeric, . and _ characters allowed',
                      usernameTaken: (_) =>
                          'Username has been taken, please input another',
                      emptyString: (_) => 'Username cannot be empty',
                      exceedingLength: (_) =>
                          'Username too long, maximum of 12 characters only',
                      orElse: () => null),
                  (_) => null,
                ),
            inputFormatters: [
              FilteringTextInputFormatter.deny(
                  RegExp(r"\s\b|\b\s")) //Prevents whitespace
            ]);
      },
    );
  }
}

class _BuildCourse extends StatelessWidget {
  final Profile userProfile;

  const _BuildCourse({Key? key, required this.userProfile}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileFormBloc, ProfileFormState>(
      builder: (context, state) {
        return TextFormField(
          initialValue: userProfile.course.getOrCrash(),
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
          validator: (_) =>
              context.read<ProfileFormBloc>().state.profile.course.value.fold(
                    (f) => f.maybeMap(
                      emptyString: (_) => 'Please input your course of study',
                      exceedingLength: (_) =>
                          'Course name is too long, maximum of 20 characters only',
                      orElse: () => null,
                    ),
                    (_) => null,
                  ),
        );
      },
    );
  }
}

class _BuildBio extends StatelessWidget {
  final Profile userProfile;

  const _BuildBio({Key? key, required this.userProfile}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileFormBloc, ProfileFormState>(
      builder: (context, state) {
        return TextFormField(
          initialValue: userProfile.bio.getOrCrash(),
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
          validator: (_) =>
              context.read<ProfileFormBloc>().state.profile.course.value.fold(
                    (f) => f.maybeMap(
                      exceedingLength: (_) => 'Maximum 200 characters only',
                      orElse: () => null,
                    ),
                    (_) => null,
                  ),
        );
      },
    );
  }
}

class _BuildModule extends StatelessWidget {
  final Profile userProfile;

  const _BuildModule({Key? key, required this.userProfile}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileFormBloc, ProfileFormState>(
      builder: (context, state) {
        return TextFormField(
            initialValue: userProfile.module.getOrCrash(),
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
            validator: (_) =>
                context.read<ProfileFormBloc>().state.profile.module.value.fold(
                      (f) => f.maybeMap(
                        exceedingLength: (_) => 'Invalid module',
                        orElse: () => null,
                      ),
                      (_) => null,
                    ),
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
                      MaterialStateProperty.all(const Color(0xFF7BA5BB))),
              onPressed: () {
                context.read<ProfileFormBloc>().add(
                      const ProfileFormEvent.saved(),
                    );
              },
              child: const Text("Save & Update Info")),
        );
      },
    );
  }
}
