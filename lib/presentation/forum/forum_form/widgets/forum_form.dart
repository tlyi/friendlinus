import 'package:flutter/material.dart';

class ForumForm extends StatelessWidget {
  const ForumForm({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
          //BlocConsumer
    return Form(
      autovalidateMode: AutovalidateMode.onUserInteraction,
      child: Container(margin: const EdgeInsets.all(30.0),
      child: Column(
      children: <Widget> [
        Text('form components'),
      ],)
),
    );
  }
}
