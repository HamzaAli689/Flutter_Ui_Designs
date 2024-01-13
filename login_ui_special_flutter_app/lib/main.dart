import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:login_ui_special_flutter_app/screens/onboarding/onboarding_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<void>(
      future: run(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            home: OnBoardingPage(),
          );
        } else {
          // You can return a loading indicator here if needed
          return Container();
        }
      },
    );
  }

  Future<void> run() async {
    await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
    WidgetsFlutterBinding.ensureInitialized();
  }
}
