import 'package:flutter/material.dart';

class Circle_Avatar extends StatelessWidget {

  const Circle_Avatar({super.key, });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      maxRadius: 70,
      backgroundImage: AssetImage("images/profile.jpeg"),

    );
  }
}

