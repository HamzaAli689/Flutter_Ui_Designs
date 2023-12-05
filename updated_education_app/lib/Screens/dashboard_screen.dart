import 'package:flutter/material.dart';

class Dashboard_Screen extends StatefulWidget {
  const Dashboard_Screen({super.key});

  @override
  State<Dashboard_Screen> createState() => _Dashboard_ScreenState();
}

class _Dashboard_ScreenState extends State<Dashboard_Screen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.indigo,
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.notifications, color: Colors.white),
            )
          ],
          leading: IconButton(
            onPressed: () {},
            icon: Icon(Icons.grid_view_sharp, color: Colors.white),
          ),
        ),
        body: Column(children: [
          Container(
            height: 150,
            width: 500,
            decoration: BoxDecoration(
                color: Colors.indigo,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30))),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18),
                  child: Text("Hi, Programmers",style: TextStyle(
                    color: Colors.white,fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),),
                ),
                SizedBox(height: 30,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: TextFormField(style: TextStyle(
                    color: Colors.black,
                  ),
                    decoration: InputDecoration(
                      filled: true,
                    fillColor: Colors.white,
                    prefixIcon: Icon(Icons.search,color: Colors.grey),
                    hintText: "Search Here ......",
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(20),),
                  ),),
                )
              ],
            ),
          )
        ]),
      ),
    );
  }
}
