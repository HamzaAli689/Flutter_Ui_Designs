import 'package:flutter/material.dart';
import 'package:settingapp_uis/profilesettings.dart';
import 'package:settingapp_uis/settings1.dart';
import 'package:settingapp_uis/settings2.dart';
import 'package:settingapp_uis/settings3.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  SettingsThreePage(),
    );
  }
}


