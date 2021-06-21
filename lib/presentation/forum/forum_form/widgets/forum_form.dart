import 'dart:io';
import 'dart:math';

import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:friendlinus/application/forum/forum_form/forum_form_bloc.dart';
import 'package:friendlinus/presentation/routes/router.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:image_picker/image_picker.dart';

class ForumForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ForumFormBloc, ForumFormState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        String photoUrl =
            context.read<ForumFormBloc>().state.photoUrl.getOrElse(() => '');
        return Form(
          autovalidateMode: AutovalidateMode.onUserInteraction,
          child: Container(
            margin: const EdgeInsets.all(30.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                const _BuildTitle(),
                const SizedBox(height: 15),
                const _BuildTag(),
                const SizedBox(height: 15),
                const _BuildBody(),
                const SizedBox(height: 15),
                if (photoUrl != '') const _BuildImage(),
                Row(
                  children: <Widget>[
                    _BuildAnonymousSwitch(),
                    const Text('Post Anonymously'),
                  ],
                ),
                Row(
                  children: <Widget>[
                    _BuildAddImageButton(),
                    const SizedBox(width: 15),
                    _BuildAddPollButton(),
                    const SizedBox(width: 20),
                    _BuildSaveButton(),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class _BuildTitle extends StatelessWidget {
  const _BuildTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        labelText: 'Title',
      ),
      autocorrect: false,
      onChanged: (value) {
        context.read<ForumFormBloc>().add(ForumFormEvent.titleChanged(value));
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: (_) {
        return context.read<ForumFormBloc>().state.forumPost.title.value.fold(
            (f) => f.maybeMap(
                emptyString: (_) => 'Title cannot be empty',
                exceedingLength: (_) =>
                    'Title too long, maximum of 25 characters only',
                orElse: () => null),
            (_) => null);
      },
    );
  }
}

class _BuildTag extends StatelessWidget {
  const _BuildTag({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          labelText: 'Tag this post',
        ),
        autocorrect: false,
        onChanged: (value) {
          context.read<ForumFormBloc>().add(ForumFormEvent.tagChanged(value));
        },
        autovalidateMode: AutovalidateMode.onUserInteraction,
        validator: (_) {
          return context.read<ForumFormBloc>().state.forumPost.tag.value.fold(
              (f) => f.maybeMap(
                  exceedingLength: (_) =>
                      'Title too long, maximum of 6 characters only',
                  orElse: () => null),
              (_) => null);
        },
        inputFormatters: [
          FilteringTextInputFormatter.deny(
              RegExp(r"\s\b|\b\s")) //Prevents whitespace
        ]);
  }
}

class _BuildBody extends StatelessWidget {
  const _BuildBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.multiline,
      maxLines: null,
      minLines: 5, //For the TextFormField height
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        labelText: 'Type away...',
      ),
      autocorrect: false,
      onChanged: (value) {
        context.read<ForumFormBloc>().add(ForumFormEvent.bodyChanged(value));
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: (_) {
        return context.read<ForumFormBloc>().state.forumPost.body.value.fold(
            (f) => f.maybeMap(
                exceedingLength: (_) =>
                    'Title too long, maximum of 200 characters only',
                orElse: () => null),
            (_) => null);
      },
    );
  }
}

class _BuildImage extends StatelessWidget {
  const _BuildImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Container(
          height: MediaQuery.of(context).size.height * 0.4,
          child: Image(
            fit: BoxFit.contain,
            image: NetworkImage(
                context.read<ForumFormBloc>().state.forumPost.photoUrl),
          ))
    ]);
  }
}

class _BuildAnonymousSwitch extends StatelessWidget {
  const _BuildAnonymousSwitch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isAnon = context.read<ForumFormBloc>().state.forumPost.isAnon;
    return Switch(
        onChanged: (bool value) => context
            .read<ForumFormBloc>()
            .add(const ForumFormEvent.anonStateChanged()),
        value: isAnon);
  }
}

class _BuildSaveButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      margin: const EdgeInsets.only(top: 20.0),
      child: ElevatedButton(
          style: ButtonStyle(
              backgroundColor:
                  MaterialStateProperty.all(const Color(0xFF7BA5BB))),
          onPressed: () {
            context
                .read<ForumFormBloc>()
                .add(const ForumFormEvent.createdPost());
            context.popRoute();
          },
          child: const Text(
            "Post",
            style: TextStyle(fontSize: 16),
          )),
    );
  }
}

class _BuildAddImageButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20.0),
      child: Container(
        height: 40,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: Color(0xFF7BA5BB),
        ),
        child: IconButton(
          icon: const Icon(
            Icons.image_outlined,
            color: Colors.white,
          ),
          tooltip: 'Add Image',
          onPressed: () async {
            final picker = ImagePicker();
            File? pickedImage;
            final pickedFile = await picker.getImage(
              source: ImageSource.gallery,
              imageQuality: 70,
            );
            if (pickedFile == null) {
              FlushbarHelper.createError(message: 'No image picked')
                  .show(context);
            } else {
              pickedImage = File(pickedFile.path);
              context.read<ForumFormBloc>().add(ForumFormEvent.photoAdded(
                    pickedImage,
                    context.read<ForumFormBloc>().state.forumId,
                  ));
            }
          },
        ),
      ),
    );
  }
}

class _BuildAddPollButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20.0),
      child: Container(
        height: 40,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: Color(0xFF7BA5BB),
        ),
        child: IconButton(
          icon: Transform.rotate(
            angle: 90 * pi / 180,
            child: const Icon(
              Icons.poll_outlined,
              color: Colors.white,
            ),
          ),
          tooltip: 'Add Poll',
          onPressed: () {
            print('user adds poll');
          },
        ),
      ),
    );
  }
}
