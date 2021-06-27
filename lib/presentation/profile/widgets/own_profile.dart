import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:friendlinus/application/profile/profile_form/profile_form_bloc.dart';
import 'package:friendlinus/domain/data/profile/profile.dart';
import 'package:friendlinus/presentation/profile/widgets/profile_elements.dart';

class OwnProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileFormBloc, ProfileFormState>(
        builder: (context, state) {
      if (state.isLoading) {
        return const Center(
          heightFactor: 18,
          child: CircularProgressIndicator(),
        );
      } else {
        final userProfile =
            context.read<ProfileFormBloc>().state.currentProfile.getOrElse(() {
          FlushbarHelper.createError(message: 'Server error').show(context);
          return Profile.empty();
        });
        return ProfileElements(userProfile: userProfile, isOwnProfile: true);
      }
    });
  }
}
