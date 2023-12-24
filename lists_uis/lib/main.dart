import 'package:flutter/material.dart';

import 'grid_view.dart';
import 'list1.dart';
import 'list2.dart';

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
      home: SchoolList(),
    );
  }
}


