import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileMenuWidget extends StatelessWidget {
  const ProfileMenuWidget({
    super.key,
    required this.title,
    required this.icon,
    required this.onpress,
    required this.textColor,
    required this.iconcolor, required this.containerColor, required this.arrowColor,
  });

  final String title;
  final Color iconcolor;
  final IconData icon;
  final VoidCallback onpress;
  final Color textColor;
  final Color containerColor;
  final Color arrowColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: ListTile(
        leading: Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100), color: containerColor),
          child: Icon(icon, color: iconcolor),
        ),
        title: Text(title,
            style: TextStyle(
                color: textColor,
                fontWeight: FontWeight.w600,
                fontStyle: FontStyle.normal,
                fontSize: 15)),

        trailing: Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100), color: arrowColor),
          child: Icon(
            Icons.arrow_forward_ios,
            color: Colors.grey,
            size: 18.0,
          ),
        ),
      ),
    );
  }
}