import 'package:flutter/material.dart';

class ForumCard extends StatelessWidget {
  const ForumCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        color: Color(0xFF7BA5BB),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
          _BuildTitle(),
        ]));
  }
}

class _BuildTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Text(
      'Title',
      textAlign: TextAlign.left,
      style: TextStyle(fontWeight: FontWeight.bold),
    ); //TODO: extract title from note form
  }
}
