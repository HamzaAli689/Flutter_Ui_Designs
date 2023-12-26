import 'package:flutter/material.dart';
import 'package:todo_ui/todo2.dart';
import 'package:todo_ui/todo_home1.dart';
import 'package:todo_ui/todo_home3.dart';

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
      home: TodoTwoPage(),
    );
  }
}

