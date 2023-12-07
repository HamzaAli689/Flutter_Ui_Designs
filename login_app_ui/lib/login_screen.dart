import 'package:flutter/material.dart';

class Login_Screen extends StatelessWidget {
  const Login_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.lightBlue,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: Text("Login",style: TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.bold
          )),
          centerTitle: true,
          leading: Icon(Icons.arrow_back_ios_new,
            color: Colors.black,),
        ),
        body: Column(
          children: [
            Image.asset("images/login.png")
          ],
        ),
      ),
    );
  }
}
