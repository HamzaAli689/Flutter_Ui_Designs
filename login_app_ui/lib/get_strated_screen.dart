import 'package:flutter/material.dart';

class GetStarted_Screen extends StatelessWidget {
  const GetStarted_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.yellow,
      body: Column(
        children: [
          Image.asset("images/login.png")

        ],
      ),
      ),
    );
  }
}
