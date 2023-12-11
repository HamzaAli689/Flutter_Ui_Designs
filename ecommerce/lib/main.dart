import 'package:flutter/material.dart';

import 'cart_screens/cart1.dart';
import 'cart_screens/cart2.dart';
import 'cart_screens/cart3.dart';
import 'checkout/checkout1.dart';
import 'confirm_order1.dart';
import 'ecommerce/ecommerce1.dart';
import 'ecommerce/ecommerce2.dart';
import 'ecommerce/ecommerce4.dart';
import 'ecommerce_detail/ecommerce_detail1.dart';
import 'ecommerce_detail/ecommerce_detail2.dart';
import 'ecommerce_detail/ecommerce_detail3.dart';

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
      home:  EcommerceFourPage(),
    );
  }
}

