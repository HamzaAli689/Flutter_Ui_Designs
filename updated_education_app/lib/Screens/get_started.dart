import 'package:flutter/material.dart';

class Get_Started extends StatefulWidget {
  const Get_Started({super.key});

  @override
  State<Get_Started> createState() => _Get_StartedState();
}

class _Get_StartedState extends State<Get_Started> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          children: [
            Container(
              height: MediaQuery
                  .of(context)
                  .size
                  .height / 1.5,
              width: MediaQuery
                  .of(context)
                  .size
                  .width,
              decoration: BoxDecoration(
                  color: Colors.indigo,
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(70))
              ),
              child: Image.asset("images/2.png"),

            ),
            Container(
              width: MediaQuery
                  .of(context)
                  .size
                  .width,
              height: MediaQuery
                  .of(context)
                  .size
                  .height / 3.0,
              decoration: BoxDecoration(
                color: Colors.indigo,
              ),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(70)
                    )
                ),
                child: Column(
                  children: [
                    SizedBox(height: 30),
                    Text("Learning is everything",style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontWeight: FontWeight.bold
                    )),
                    SizedBox(height: 30),
                    Text("Learning with Pleasure with Dear"
                        "Programmer,Wherever you Are. ",style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,

                    )),
                  ],
                ),
              ),
            )

          ],
        ),
      ),
    );
  }
}
