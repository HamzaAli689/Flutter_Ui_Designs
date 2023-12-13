import 'package:flutter/material.dart';

import 'auth/auth1.dart';
import 'auth/auth2.dart';
import 'auth/auth3.dart';
import 'logins/login1.dart';
import 'logins/login2.dart';

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
      home: LoginTwoPage(),
    );
  }
}


