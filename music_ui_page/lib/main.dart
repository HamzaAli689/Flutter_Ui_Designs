import 'package:flutter/material.dart';
import 'package:music_ui_page/pages/image_popup.dart';

import 'music_page/musicplayer.dart';
import 'music_page/musicplayer2.dart';

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
      home: ImagePopupPage(),
    );
  }
}

