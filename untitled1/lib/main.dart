import 'package:flutter/material.dart';

import 'drawer1.dart';
import 'drawer2.dart';
import 'hidden_drawer_nav.dart';
import 'hiddenmenu.dart';
import 'menu1.dart';

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
      home: MenuOnePage(),
    );
  }
}


