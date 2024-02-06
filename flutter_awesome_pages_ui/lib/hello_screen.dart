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
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text("Hamza Ali",style: TextStyle(
            color: Colors.black,
          )),
        ),
        body: Expanded(
          child: Padding(
            padding: EdgeInsets.all(10),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    height: 200,
                    width: MediaQuery.of(context).size.width,
                    color: Colors.greenAccent,
                  ),
                  SizedBox(height: 10,),
                  SingleChildScrollView(scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Container(
                          height: 200,
                          width: 100,
                          color: Colors.greenAccent,
                        ),SizedBox(width: 10,),
                        Container(
                          height: 200,
                          width: 100,
                          color: Colors.greenAccent,
                        ),
                        SizedBox(width: 10,),
                        Container(
                          height: 200,
                          width: 100,
                          color: Colors.greenAccent,
                        ),
                        SizedBox(width: 10,),
                        Container(
                          height: 200,
                          width: 100,
                          color: Colors.greenAccent,
                        ),
                        SizedBox(width: 10,),
                        Container(
                          height: 200,
                          width: 100,
                          color: Colors.greenAccent,
                        ),
                        SizedBox(width: 10,),
                        Container(
                          height: 200,
                          width: 100,
                          color: Colors.greenAccent,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    height: 200,
                    width: MediaQuery.of(context).size.width,
                    color: Colors.greenAccent,
                  ),
                  SizedBox(height: 10,),
                  Container(
                    height: 200,
                    width: MediaQuery.of(context).size.width,
                    color: Colors.greenAccent,
                  ),
                  SizedBox(height: 10,),
                  Container(
                    height: 200,
                    width: MediaQuery.of(context).size.width,
                    color: Colors.greenAccent,
                  ),
                  SizedBox(height: 10,),
                  Container(
                    height: 200,
                    width: MediaQuery.of(context).size.width,
                    color: Colors.greenAccent,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
