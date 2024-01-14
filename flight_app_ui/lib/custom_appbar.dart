import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  final List<BottomNavigationBarItem> bottomBarItems = [];

  CustomAppBar() {
    bottomBarItems.add(BottomNavigationBarItem(
      icon: Icon(Icons.home, color: Colors.black),
      label: "Explore", // Use label instead of title
    ));
    bottomBarItems.add(BottomNavigationBarItem(
      icon: Icon(Icons.home, color: Colors.black),
      label: "Another Item",
    ));
    bottomBarItems.add(BottomNavigationBarItem(
      icon: Icon(Icons.home, color: Colors.black),
      label: "Yet Another Item",
    ));
    bottomBarItems.add(BottomNavigationBarItem(
      icon: Icon(Icons.home, color: Colors.black),
      label: "And Another Item",
    ));
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: bottomBarItems,
      type: BottomNavigationBarType.fixed,
    );
  }
}
