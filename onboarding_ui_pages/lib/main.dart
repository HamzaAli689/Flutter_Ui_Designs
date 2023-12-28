import 'package:flutter/material.dart';

import 'intro2.dart';
import 'intro3.dart';
import 'intro4.dart';
import 'intro5.dart';
import 'intro6.dart';
import 'landing1.dart';

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
      home: IntroSixPage(),
    );
  }
}


