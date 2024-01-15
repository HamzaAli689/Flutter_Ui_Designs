import 'package:flutter/material.dart';
import '../widgets/custom_appbar.dart';
import '../widgets/slider.dart';

class HomePage extends StatefulWidget {


  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Stack(
        fit: StackFit.expand,
        children: <Widget>[MainSlider(), CustomAppBar()],
      ),
    );
  }
}
