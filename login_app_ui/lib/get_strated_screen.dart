import 'package:flutter/material.dart';

class GetStarted_Screen extends StatelessWidget {
  const GetStarted_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.lightBlueAccent,
      body: Column(
        children: [
          SizedBox(height: 130,),
          Image.asset("images/login.png"),
          SizedBox(height: 70,),
          Text("Build Awesome Apps",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),),
          SizedBox(height: 10,),
          Text("Build Awesome Apps",
            style: TextStyle(
              color: Colors.black54,
              fontSize: 15,
            ),),

        ],
      ),
      ),
    );
  }
}
