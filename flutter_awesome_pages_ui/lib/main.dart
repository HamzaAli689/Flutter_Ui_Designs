import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/foundation.dart' show debugDefaultTargetPlatformOverride;

import 'home_page.dart';

void main() {
  _setTargetPlatformForDesktop();

  runApp(
    MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.blue,
        fontFamily: "Roboto",
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
      ),
    ),
  );
}

void _setTargetPlatformForDesktop() {
  TargetPlatform? targetPlatform; // Declare targetPlatform as nullable
  if (Platform.isMacOS) {
    targetPlatform = TargetPlatform.iOS;
  } else if (Platform.isLinux || Platform.isWindows) {
    targetPlatform = TargetPlatform.android;
  }
  if (targetPlatform != null) {
    debugDefaultTargetPlatformOverride = targetPlatform;
  }
}
