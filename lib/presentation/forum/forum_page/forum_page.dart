import 'package:flutter/material.dart';
import 'package:friendlinus/domain/data/forum/forum_post.dart';
import 'package:friendlinus/presentation/core/app_bar.dart';
import 'package:friendlinus/presentation/core/nav_bar.dart';
import 'package:friendlinus/presentation/forum/forum_page/widgets/forum_body.dart';

class ForumPage extends StatelessWidget {
  final ForumPost forum;
  const ForumPage({ Key? key , required this.forum}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context: context, header: '??', canGoBack: true), //Can't rly number it off like our original mockup 
      bottomNavigationBar: const NavigationBar(),
      body: Container(
        alignment: Alignment.topCenter,
        child: SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              maxHeight: MediaQuery.of(context).size.height -
                  (MediaQuery.of(context).padding.top + kToolbarHeight),
            ),
            child: ForumBody(forum: forum),
          ),
        ),
      ),
    );
  }
}