import 'package:flutter/material.dart';
import 'package:food_ui_pages/recipe_details.dart';
import 'package:food_ui_pages/recipe_list.dart';
import 'package:food_ui_pages/recipe_single.dart';

import 'avocado.dart';
import 'cake.dart';
import 'fdhome.dart';
import 'food_checkout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: RecipeSinglePage(),
    );
  }
}


