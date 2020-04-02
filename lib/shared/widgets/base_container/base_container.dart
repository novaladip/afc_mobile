import 'package:flutter/material.dart';

class BaseContainer extends StatelessWidget {
  final Widget child;
  final Color color;
  final double width;
  final double height;
  final Alignment alignment;
  final Decoration decoration;
  final BoxConstraints constraints;
  final EdgeInsetsGeometry margin;

  BaseContainer({
    @required this.child,
    this.color,
    this.alignment,
    this.height,
    this.width,
    this.decoration,
    this.constraints,
    this.margin = const EdgeInsets.symmetric(vertical: 10),
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      constraints: constraints,
      padding: EdgeInsets.symmetric(horizontal: 15),
      color: color,
      alignment: alignment,
      height: height,
      width: width,
      child: child,
      decoration: decoration,
    );
  }
}
