import 'package:flutter/material.dart';
import 'package:friendlinus/presentation/forum/forum_overview/widgets/forum_card.dart';

class ForumOverviewBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context, index) {
      return const ForumCard();
    });
  }
}
