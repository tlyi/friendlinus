import 'package:flutter/material.dart';
import 'package:friendlinus/presentation/core/app_bar.dart';
import 'package:friendlinus/presentation/core/nav_bar.dart';
import 'package:friendlinus/presentation/forum/forum_overview/widgets/forum_overview_body.dart';
import 'package:friendlinus/presentation/routes/router.gr.dart';
import 'package:auto_route/auto_route.dart';

class ForumOverviewPage extends StatelessWidget {
  const ForumOverviewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context: context, header: 'Forums'),
      bottomNavigationBar: const NavigationBar(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.pushRoute(const ForumFormRoute());
        },
        backgroundColor: const Color(0xFF7BA5BB),
        child: const Icon(Icons.create),
      ),
      body: Container(
        alignment: Alignment.topCenter,
        child: SingleChildScrollView(
          child: ConstrainedBox(
            constraints:
                BoxConstraints(maxHeight: MediaQuery.of(context).size.height),
            child: ForumOverviewBody(),
          ),
        ),
      ),
    );
  }
}
