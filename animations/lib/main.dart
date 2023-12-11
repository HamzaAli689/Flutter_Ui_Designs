import 'package:flutter/material.dart';

import 'animationtwopage.dart';
import 'animi1.dart';
import 'animi5.dart';
import 'animi_four.dart';
import 'home.dart';


void main (){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
