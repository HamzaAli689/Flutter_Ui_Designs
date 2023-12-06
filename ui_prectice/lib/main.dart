import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: bottom_appbar(),
    );
  }
}



class bottom_appbar extends StatefulWidget {
  @override
  _bottom_appbarState createState() => _bottom_appbarState();
}

class _bottom_appbarState extends State<bottom_appbar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Column(mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          BottomNavigationBar(elevation: 25,
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Tab 1',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.search),
                label: 'Tab 2',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'Tab 3',
              ),
            ],
          ),
        ],
      ),
    );
  }
}

