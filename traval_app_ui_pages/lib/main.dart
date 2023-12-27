import 'package:flutter/material.dart';
import 'package:traval_app_ui_pages/travel_home.dart';
import 'package:traval_app_ui_pages/travel_nepal.dart';
import 'package:traval_app_ui_pages/travelstory.dart';

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
      home: TravelStoryPage(),
    );
  }
}

