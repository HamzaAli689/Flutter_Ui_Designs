import 'package:flutter/material.dart';

import '../utils/constant.dart';

class ProfileImage extends StatelessWidget {
  final double height, width;
  final Color color;
  const ProfileImage(
      {super.key, this.height = 100.0, this.width = 100.0, this.color = Colors.white});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.red,
        image: const DecorationImage(
          image: AssetImage("images/profile.jpg"),
          fit: BoxFit.contain,
        ),
        border: Border.all(
          color: color,
          width: 3.0,
        ),
      ),
    );
  }
}
