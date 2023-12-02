import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.teal),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: Text("BottomAppBar Creation"),
        ),
        body: Center(
          child: Text("WelCome",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                  fontStyle: FontStyle.italic)),
        ),
        bottomNavigationBar: BottomAppBar(
          color: Colors.teal,
          child: Row(
            children: [
              IconButton(onPressed: () {}, icon: Icon(Icons.home)),
              Spacer(),
              IconButton(onPressed: () {}, icon: Icon(Icons.search)),
              IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(onPressed: () {  },
          child: Icon(Icons.add,color: Colors.black),backgroundColor: Colors.tealAccent,
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        drawer: Drawer(),
      ),
    );
  }
}