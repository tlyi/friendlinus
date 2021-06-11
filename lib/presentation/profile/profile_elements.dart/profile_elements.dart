import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileElements extends StatelessWidget {
  const ProfileElements({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: <Widget>[
        const UserProfile(),
        const SizedBox(height: 15),
        FriendList(),
        const SizedBox(height: 15),
        ModulesOfInterest(),
        const SizedBox(height: 15),
        RecentPosts(),
      ],
    ));
  }
}

class UserProfile extends StatelessWidget {
  const UserProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Row(
        children: <Widget>[
          Column(
            children: <Widget>[
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('images/placeholder_dp.png'),
                backgroundColor: Colors.transparent,
              ),
              TextButton(
                // ignore: sort_child_properties_last
                child: const Text('Update Profile'),
                onPressed: () {},
              ),
            ],
          ),
          SizedBox(width: 20,),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start ,
            verticalDirection: VerticalDirection.down,
            children: <Widget>[
              Text('username'),
              Text('course'),
              Text('bio'),
            ],
          ),
        ],
      ),
    );
  }
}

class FriendList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: MediaQuery.of(context).size.width * 0.8,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: const Text('Friend List'),
    );
  }
}

class ModulesOfInterest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: MediaQuery.of(context).size.width * 0.8,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: const Text('Modules Of Interest'),
    );
  }
}

class RecentPosts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: MediaQuery.of(context).size.width * 0.8,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: const Text('RecentPosts'),
    );
  }
}
