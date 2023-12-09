import 'package:flutter/material.dart';
import 'package:furniture_app_ui/pages/furniture.dart';
import 'package:furniture_app_ui/pages/profile.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        '/': (BuildContext context) => SafeArea(
              child: SafeArea(
                child: Profile(),
              ),
            ),
        '/furniture': (BuildContext context) => SafeArea(
              child: SafeArea(
                child: Furniture(),
              ),
            ),
      },
    );
  }
}
