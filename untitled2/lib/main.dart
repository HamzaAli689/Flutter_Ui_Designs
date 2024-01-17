import 'package:flutter/material.dart';
import 'package:untitled2/shopping_cart_ui/shopping_cart2/home_page.dart';

import 'news_app_ui/news_app.dart';


const linearColor = LinearGradient(
    colors: [Color(0xFFC60447), Color(0xFFA40053)],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight);

const protectionMsgs = [
  "3 year protection plan for custom PC Build with super fast services",
  "2 year protection plan for Alienware Monitors with cheap fixings"
];

void main() => runApp(MainApp());

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'News app',
      home: MyApp(),
      debugShowCheckedModeBanner: false,
    );
  }
}

