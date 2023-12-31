/**
 * Author: Ambika Dulal
 * profile: https://github.com/Ambikadulal
 * design: Dribble.com
 * imagesource:purepng.com/pngio.com
  */
import 'package:flutter/material.dart';
import 'package:flutter_resturent/screens/home_page.dart';
void main(){
  runApp(PlantAppPage());
}

class PlantAppPage extends StatelessWidget {
  static const String path = 'lib/src/plant_app/main.dart';

  const PlantAppPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: const Color(0xff67864A),
      ),
      home: const HomePage(),
    );
  }
}
