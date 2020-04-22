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
  final EdgeInsetsGeometry padding;

  BaseContainer({
    @required this.child,
    this.color,
    this.alignment,
    this.height,
    this.width,
    this.decoration,
    this.constraints,
    this.margin = const EdgeInsets.symmetric(vertical: 8),
    this.padding = const EdgeInsets.symmetric(horizontal: 20),
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      constraints: constraints,
      padding: padding,
      color: color,
      alignment: alignment,
      height: height,
      width: width,
      child: child,
      decoration: decoration,
    );
  }
}
