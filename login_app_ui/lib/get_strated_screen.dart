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
            SizedBox(
              height: 130,
            ),
            Image.asset("images/login.png"),
            SizedBox(
              height: 70,
            ),
            Text(
              "Build Awesome Apps",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 70),
              child: Text(
                "Let's Put your Creativity on the ",
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 15,
                ),
              ),
            ),
            Text(
              "Development Highway ",
              style: TextStyle(
                color: Colors.black54,
                fontSize: 15,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                children: [
                  SizedBox(width: 140,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.yellow,
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadiusDirectional.circular(10))),
                        onPressed: () {},
                        child: Text("Login",style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,fontSize: 15

                        ),)),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  SizedBox(width: 140,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.yellow,
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                BorderRadiusDirectional.circular(10))),
                        onPressed: () {},
                        child: Text("Sign Up",style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,fontSize: 15

                        ),)),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
