import 'package:flutter/material.dart';
import '../../utility/color_utility.dart';

class OnBoardingEnterAnimation {
  OnBoardingEnterAnimation(this.controller)
      : colorAnimation = ColorTween(
          begin: Color(getColorHexFromStr(COLOR_WELCOME)),
          // Assuming COLOR_WELCOME is defined
          end: Color(getColorHexFromStr(
              COLOR_LOGIN)), // Assuming COLOR_LOGIN is defined
        ).animate(
          CurvedAnimation(
            parent: controller,
            curve: const Interval(
              0.0,
              0.2,
              curve: Curves.fastOutSlowIn,
            ),
          ),
        );

  final AnimationController controller;
  final Animation<Color?>
      colorAnimation; // Change the type to Animation<Color?>

  // Add the following lines to resolve the initialization issue
  static const String COLOR_WELCOME = "your_color_code_for_welcome";
  static const String COLOR_LOGIN = "your_color_code_for_login";
}
