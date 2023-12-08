import 'package:flutter/material.dart';
import 'package:login_app_ui/get_strated_screen.dart';
import 'package:login_app_ui/widgets/my_textformfeild.dart';

import 'login_screen.dart';

class SignUp_Screen extends StatelessWidget {
  const SignUp_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.lightBlueAccent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: Text("Sign Up",
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
                Image.asset("images/login2.png", height: 200),
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
                My_TextFormFeild(title: 'Full Name', icon: Icons.account_box,),
                SizedBox(height: 10),
                My_TextFormFeild(title: 'E-mail', icon: Icons.email,),
                SizedBox(height: 10),
                My_TextFormFeild(title: 'Phone No', icon: Icons.phone,),
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

                SizedBox(
                  height: 20,
                ),
                SizedBox(width: 340,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.yellow,
                          shape: RoundedRectangleBorder(
                              borderRadius:
                              BorderRadiusDirectional.circular(30))),
                      onPressed: () {},
                      child: Text("Sign Up",style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,fontSize: 18

                      ),)),
                ),
                SizedBox(
                  height: 20,
                ),
                Text("OR",style: TextStyle(fontSize: 18),),
                SizedBox(height: 20,),
                Container(
                  height: 40,
                  width: 340,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.yellow
                  ),
                  child: Center(
                    child: Row(
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Image.asset("images/google.png",height: 30,
                            width: 30),
                        SizedBox(width: 50),
                        Text("Sign-in with Google",style: TextStyle(
                            color: Colors.black,fontWeight: FontWeight.w600,
                            fontSize: 15
                        )),

                      ],
                    ),
                  ),

                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 80,
                    ),
                    Text("Already have an Account ?"),
                    TextButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Login_Screen()));
                    }, child: Text("Login",style: TextStyle(
                        color: Colors.yellow,fontSize: 18
                    ),))
                  ],
                ),
                SizedBox(
                  height: 100,
                )

              ],
            ),
          ),
        ),
      ),
    );
  }
}
