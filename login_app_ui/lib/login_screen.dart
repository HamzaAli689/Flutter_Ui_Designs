import 'package:flutter/material.dart';
import 'package:login_app_ui/get_strated_screen.dart';

class Login_Screen extends StatelessWidget {
  const Login_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.lightBlueAccent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: Text("Login",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.bold)),
          centerTitle: true,
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios_new),
            color: Colors.black,
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => GetStarted_Screen()));
            },
          ),
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                Image.asset("images/login2.png", height: 250),
                Text(
                  "WELCOME BACK",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 70),
                  child: Text(
                    "More it Work, More it Right",
                    style: TextStyle(
                      color: Colors.black54,
                      fontSize: 15,
                    ),
                  ),
                ),
                Text(
                  "More it Fast ",
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 15,
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: TextFormField(
                    style: TextStyle(color: Colors.white, fontSize: 18),
                    decoration: InputDecoration(
                        hintText: "E-mail",hintStyle: TextStyle(
                      color: Colors.white
                    ),
                        fillColor: Colors.black,
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(30),),
                        filled: true,
                        prefixIcon: Icon(Icons.email, color: Colors.yellowAccent),
                    )
                  ),
                ),
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: TextFormField(obscureText: true,
                      style: TextStyle(color: Colors.white, fontSize: 18),
                      decoration: InputDecoration(
                        hintText: "Password",hintStyle: TextStyle(
                          color: Colors.white
                      ),
                        fillColor: Colors.black,
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(30),),
                        filled: true,
                        prefixIcon: Icon(Icons.lock, color: Colors.yellowAccent),
                      )
                  ),
                ),
                SizedBox(height: 10),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 200),
                      child: Text("Forget Password ?",style: TextStyle(
                        color: Colors.yellowAccent,
                        fontWeight: FontWeight.w400,
                      ),),
                    ),
                  ],
                ),
                
              ],
            ),
          ),
        ),
      ),
    );
  }
}
