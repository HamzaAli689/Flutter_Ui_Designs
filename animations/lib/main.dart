import 'package:flutter/material.dart';

import 'animationtwopage.dart';
import 'animithree.dart';

void main (){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FancyAppbarAnimation(),
    );
  }
}
