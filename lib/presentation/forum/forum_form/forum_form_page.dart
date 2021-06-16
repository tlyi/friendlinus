import 'package:flutter/material.dart';
import 'package:friendlinus/presentation/core/app_bar.dart';
import 'package:friendlinus/presentation/forum/forum_form/widgets/forum_form.dart';

class ForumFormPage extends StatelessWidget {
  const ForumFormPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(
        context: context,
        header: 'Create Post',
        canClose: true,
        notifications: false,
      ),
      body: Container(
        alignment: Alignment.topCenter,
        child: SingleChildScrollView(
          child: ConstrainedBox(
            constraints:
                BoxConstraints(maxHeight: MediaQuery.of(context).size.height),
            child: const ForumForm(),
            /*child: BlocProvider(
              create: (context) => getIt<ForumFormBloc>(),
              child: ForumForm(),
            ),
            */
          ),
        ),
      ),
    );
  }
}
