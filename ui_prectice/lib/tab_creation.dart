import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.indigo),
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: Text(
              "Tab Creation",
            ),
            automaticallyImplyLeading: false,
            backgroundColor: Colors.indigo,
            bottom: TabBar(indicatorColor: Colors.white, tabs: [
              Tab(
                text: "Home",
                icon: Icon(Icons.home),
              ),
              Tab(
                text: "Music",
                icon: Icon(Icons.music_note),
              ),
              Tab(
                text: "Video",
                icon: Icon(Icons.video_collection),
              ),
              Tab(
                text: "Setting",
                icon: Icon(Icons.settings),
              ),
            ]),
          ),
          body: TabBarView(children: [
            Center(
              child: Text("Home",
                  style: TextStyle(
                      fontStyle: FontStyle.italic,
                      fontSize: 40,
                      fontWeight: FontWeight.bold)),
            ),
            Center(
              child: Text("Music",
                  style: TextStyle(
                      fontStyle: FontStyle.italic,
                      fontSize: 40,
                      fontWeight: FontWeight.bold)),
            ),
            Center(
              child: Text("Video",
                  style: TextStyle(
                      fontStyle: FontStyle.italic,
                      fontSize: 40,
                      fontWeight: FontWeight.bold)),
            ),
            Center(
              child: Text("Settings",
                  style: TextStyle(
                      fontStyle: FontStyle.italic,
                      fontSize: 40,
                      fontWeight: FontWeight.bold)),
            ),
          ]),
        ),
      ),
    );
  }
}