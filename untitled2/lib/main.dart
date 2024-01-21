import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:untitled2/wall_art/pages/welcome.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          appBarTheme: AppBarTheme(
            textTheme: TextTheme(title: TextStyle(color: Colors.white)),
            iconTheme: IconThemeData(
              color: Colors.black,
            ),
            actionsIconTheme: IconThemeData(
              color: Colors.black,
            ), systemOverlayStyle: SystemUiOverlayStyle.dark,
          )),
      initialRoute: "/",
      routes: {'/': (context) => WelcomePage()},
      debugShowCheckedModeBanner: false,
    );
  }
}

//////////////////////////////////////////////////////////////////////////////////
// main data(import 'package:flutter/material.dart';
// import 'package:untitled2/shopping_cart_ui/shopping_cart2/home_page.dart';
// import 'bloom_app_ui/bloom_app.dart';
// import 'news_app_ui/news_app.dart';
//
// const linearColor = LinearGradient(
//     colors: [Color(0xFFC60447), Color(0xFFA40053)],
//     begin: Alignment.topLeft,
//     end: Alignment.bottomRight);
//
// const protectionMsgs = [
//   "3 year protection plan for custom PC Build with super fast services",
//   "2 year protection plan for Alienware Monitors with cheap fixings"
// ];
//
// void main() => runApp(MainApp());
//
// class MainApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'News app',
//       home: BloomApp(),
//       debugShowCheckedModeBanner: false,
//     );
//   }
// })