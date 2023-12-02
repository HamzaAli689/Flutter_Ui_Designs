import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.red),
      home: Scaffold(
        appBar: AppBar(
          title: Text("BottomAppBar Creation"),
        ),
        body: Center(
          child: Text("Welcome",
              style: TextStyle(
                  color: Colors.black,
                  fontStyle: FontStyle.italic,
                  fontSize: 40,
                  fontWeight: FontWeight.bold)),
        ),
        bottomNavigationBar: BottomAppBar(
          color: Colors.red,
          child: Row(
            children: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.home),
                  color: Colors.white),
              Spacer(),
              IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.search),
                  color: Colors.white),
              IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.more_vert),
                  color: Colors.white),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.add, color: Colors.white),
          backgroundColor: Colors.redAccent,
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        drawer: Drawer(),
      ),
    );
  }
}
