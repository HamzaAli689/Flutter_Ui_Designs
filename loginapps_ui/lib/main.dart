import 'package:flutter/material.dart';

import 'auth/auth1.dart';
import 'auth/auth2.dart';
import 'auth/auth3.dart';
import 'logins/login1.dart';
import 'logins/login2.dart';
import 'logins/login3.dart';
import 'logins/login4.dart';
import 'logins/login5.dart';
import 'logins/login7.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginSevenPage(),
    );
  }
}


