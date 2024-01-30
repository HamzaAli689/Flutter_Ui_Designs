import 'package:flutter/material.dart';
import 'fitness_dashboard/screen/activity_page/activity_page.dart';
import 'fitness_dashboard/screen/onboarding/onboarding_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        '/onboarding': (BuildContext context) => OnBoardingPage(),
        '/activity': (BuildContext context) => ActivityPage(),
      },
      home: OnBoardingPage(),
    );
  }
}












/////////////////////////////////////////////////////////////////////////////////////////

//(import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:flutter_ui_challenges/shoes_shop_app_ui/home_page.dart';
//
// void main() {
//   WidgetsFlutterBinding.ensureInitialized();
//   SystemChrome.setPreferredOrientations(
//       [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown])
//       .then((_) => runApp(new MyApp()));
// }
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Shoes Shop',
//       theme: ThemeData(
//           primarySwatch: Colors.blue,
//           primaryTextTheme: TextTheme(
//               displayLarge: TextStyle(
//                   fontFamily: 'Helvetica'
//               )
//           )
//       ),
//       home: HomePage(),
//       debugShowCheckedModeBanner: false,
//     );
//   }
// })