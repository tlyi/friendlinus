import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:friendlinus/presentation/routes/router.gr.dart';
import 'package:auto_route/auto_route.dart';

class ForumForm extends StatelessWidget {
  const ForumForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //BlocConsumer
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
              const _BuildText(),
              const SizedBox(height: 15),
              Row(
                children: <Widget>[
                  _BuildAddImageButton(),
                  const SizedBox(width: 15),
                  _BuildAddPollButton(),
                  const SizedBox(width: 20),
                  _BuildSaveButton(),
                ],
              )
            ],
          )),
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
      onChanged: (value) {},
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: (_) {},
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
        onChanged: (value) {},
        autovalidateMode: AutovalidateMode.onUserInteraction,
        validator: (_) {},
        inputFormatters: [
          FilteringTextInputFormatter.deny(
              RegExp(r"\s\b|\b\s")) //Prevents whitespace
        ]);
  }
}

class _BuildText extends StatelessWidget {
  const _BuildText({Key? key}) : super(key: key);

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
      onChanged: (value) {},
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: (_) {},
    );
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
          onPressed: () {
            print('user adds image');
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

/*Attach photo and Create poll buttons below text body?
For poll => poll icon rotate 90 deg
Allow text + either text or poll.
*/