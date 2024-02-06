import 'package:flutter/material.dart';

class MyScreenApp extends StatefulWidget {
  const MyScreenApp({super.key});

  @override
  State<MyScreenApp> createState() => _MyScreenAppState();
}

class _MyScreenAppState extends State<MyScreenApp> {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text("Hamza Ali",style: TextStyle(
            color: Colors.black,
          )),
        ),
      ),
    );
  }
}
