import 'package:flutter/material.dart';

class My_TextFormFeild extends StatelessWidget {
  const My_TextFormFeild({super.key, required this.title, required this.icon});

final String title;
final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: TextFormField(
          style: TextStyle(color: Colors.white, fontSize: 18),
          decoration: InputDecoration(
            hintText: title,hintStyle: TextStyle(
              color: Colors.white
          ),
            fillColor: Colors.black,
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(30),),
            filled: true,
            prefixIcon: Icon(icon, color: Colors.yellowAccent),
          )
      ),
    );
  }
}
