import 'package:flutter/material.dart';
import 'package:magazine_app/pages/home.dart';
import 'package:magzines_app_ui/pages/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Magazine app",
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
