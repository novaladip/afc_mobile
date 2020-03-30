import 'package:flutter/material.dart';

class ThemeBuilder extends StatelessWidget {
  final Widget Function(
    BuildContext context,
    AppTheme appTheme,
  ) builder;

  const ThemeBuilder({
    Key key,
    this.builder,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final primaryColor = Theme.of(context).primaryColor;
    final accentColor = Theme.of(context).accentColor;
    final viewInsets = MediaQuery.of(context).viewInsets;
    final padding = MediaQuery.of(context).padding;
    final textTheme = Theme.of(context).textTheme;

    return builder(
      context,
      AppTheme(
        primaryColor: primaryColor,
        accentColor: accentColor,
        height: screenSize.height,
        width: screenSize.width,
        viewInsets: viewInsets,
        padding: padding,
        textTheme: textTheme,
      ),
    );
  }
}

class AppTheme {
  final double height;
  final double width;
  final Color primaryColor;
  final Color accentColor;
  final EdgeInsets viewInsets;
  final EdgeInsets padding;
  final TextTheme textTheme;

  AppTheme({
    @required this.height,
    @required this.width,
    @required this.primaryColor,
    @required this.accentColor,
    @required this.viewInsets,
    @required this.padding,
    @required this.textTheme,
  });
}
