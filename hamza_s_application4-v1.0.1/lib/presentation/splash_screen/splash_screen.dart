import 'dart:async';

import 'package:flutter/material.dart';
import 'package:hamza_s_application4/core/app_export.dart';

import '../home_screen/home_screen.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Use a Future.delayed to simulate a splash screen with a duration of 3 seconds
    Future.delayed(Duration(seconds: 3), () {
      // Navigate to the home screen after the delay
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => HomeScreen()), // Replace HomeScreen with the actual home screen widget
      );
    });

    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.gray300,
        body: Container(
          width: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomImageView(
                svgPath: ImageConstant.imgGroup74,
                height: getVerticalSize(184),
                width: getHorizontalSize(269),
                margin: getMargin(bottom: 5),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
