import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

class ZoomableImage extends StatelessWidget {
  final String url;
  final double height;

  const ZoomableImage({
    Key key,
    @required this.url,
    this.height = 200,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: double.infinity,
      child: ClipRect(
        child: PhotoView(
          backgroundDecoration: BoxDecoration(color: Colors.transparent),
          imageProvider: NetworkImage(url),
          maxScale: PhotoViewComputedScale.covered * 2.0,
          minScale: PhotoViewComputedScale.contained * 0.8,
          initialScale: PhotoViewComputedScale.covered,
        ),
      ),
    );
  }
}
