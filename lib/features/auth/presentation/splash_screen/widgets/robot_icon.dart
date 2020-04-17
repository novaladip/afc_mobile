import 'package:afc_mobile/common/widgets/widgets.dart';
import 'package:flutter/material.dart';

class RobotIcon extends StatefulWidget {
  @override
  _RobotIconState createState() => _RobotIconState();
}

class _RobotIconState extends State<RobotIcon> with TickerProviderStateMixin {
  AnimationController colorController;
  Animation<Color> colorAnimation;

  @override
  Widget build(BuildContext context) {
    return ThemeBuilder(
      builder: (context, appTheme) {
        return Image.asset(
          'assets/icons/robot.png',
          height: appTheme.height * 0.4,
          color: colorAnimation.value,
        );
      },
    );
  }

  @override
  void initState() {
    super.initState();
    colorController =
        AnimationController(duration: Duration(milliseconds: 500), vsync: this);
    colorAnimation =
        ColorTween(begin: Color(0XFF2CD8D5), end: Color(0XFFFFBAC3))
            .animate(colorController)
              ..addListener(() {
                setState(() {});
              });

    colorController.repeat();
  }

  @override
  void dispose() {
    colorController.dispose();
    super.dispose();
  }
}
