import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:friendlinus/application/forum/forum_form/forum_form_bloc.dart';
import 'package:friendlinus/injection.dart';
import 'package:friendlinus/presentation/core/app_bar.dart';
import 'package:friendlinus/presentation/forum/forum_form/widgets/forum_form.dart';

class ForumFormPage extends StatelessWidget {
  const ForumFormPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<ForumFormBloc>(),
      child: Scaffold(
        appBar: appBar(
          context: context,
          header: 'Create Post',
          canClose: true,
          notifications: false,
        ),
        body: Container(
          alignment: Alignment.topCenter,
          child: SingleChildScrollView(
            child: ForumForm(),
          ),
        ),
      ),
    );
  }
}
