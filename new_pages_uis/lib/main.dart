import 'package:flutter/material.dart';
import 'package:new_pages_uis/quotes1.dart';
import 'dialogs.dart';

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
      home: QuotesOnePage(),
    );
  }
}


