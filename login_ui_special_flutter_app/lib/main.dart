import 'package:flutter/material.dart';
import 'package:login_ui_special_flutter_app/screens/onboarding/onboarding_page.dart';

void main()
 {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: OnBoardingPage(),
    );
  }
}
