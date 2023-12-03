import 'package:flutter/material.dart';
import 'package:profile_app_ui/screens/profile.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Profile_Screen(),
    );
  }
}

