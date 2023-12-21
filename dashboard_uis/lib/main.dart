import 'package:flutter/material.dart';

import 'dash1.dart';
import 'dash2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DashboardTwoPage(),
    );
  }
}


