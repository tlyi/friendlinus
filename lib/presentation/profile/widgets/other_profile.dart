import 'package:flutter/material.dart';
import 'package:friendlinus/domain/data/profile/profile.dart';

class OtherProfile extends StatelessWidget {
  final Profile userProfile;
  const OtherProfile({Key? key, required Profile this.userProfile})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(userProfile.username.getOrCrash()),
    );
  }
}
