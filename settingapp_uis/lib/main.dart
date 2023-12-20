import 'package:flutter/material.dart';
import 'package:settingapp_uis/profilesettings.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  ProfileSettingsPage(),
    );
  }
}


