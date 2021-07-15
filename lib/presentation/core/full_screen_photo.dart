import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';
import 'package:friendlinus/presentation/routes/router.gr.dart';
import 'package:auto_route/auto_route.dart';

class FullScreenPhotoPage extends StatelessWidget {
  final String photoUrl;
  const FullScreenPhotoPage({Key? key, required this.photoUrl})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: IconButton(
          onPressed: () => context.popRoute(),
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
        body: PhotoView(
          imageProvider: CachedNetworkImageProvider(photoUrl),
          heroAttributes: const PhotoViewHeroAttributes(tag: "photo"),
        ));
  }
}
