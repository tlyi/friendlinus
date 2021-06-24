import 'package:flutter/material.dart';

class ForumCard extends StatelessWidget {
  final String title;

  const ForumCard({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        shape: RoundedRectangleBorder(
          side: new BorderSide(color: const Color(0xFF7BA5BB), width: 2.0),
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
          _BuildTitle(
            title: title,
          ),
        ]));
  }
}

class _BuildTitle extends StatelessWidget {
  final String title;
  const _BuildTitle({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textAlign: TextAlign.left,
      style: TextStyle(fontWeight: FontWeight.bold),
    ); //TODO: extract title from note form
  }
}
