import 'package:flutter/material.dart';
import 'package:profileapp_uis/profile_uis/profile1.dart';
import 'package:profileapp_uis/profile_uis/profile2.dart';
import 'package:profileapp_uis/profile_uis/profile3.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProfileTwoPage(),
    );
  }
}