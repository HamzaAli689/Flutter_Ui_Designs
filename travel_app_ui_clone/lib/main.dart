import 'package:flutter/material.dart';
import '../screens/home_screen.dart';

void main() {
  runApp(TravelUiClone());
}
class TravelUiClone extends StatelessWidget {
  static const String path = 'lib/src/travelui_clone/main.dart';

  const TravelUiClone({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Travel UI',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: const Color(0xFF3EBACE),
        scaffoldBackgroundColor: const Color(0xFFF3F5F7), colorScheme: ColorScheme.fromSwatch().copyWith(secondary: const Color(0xFFD8ECF1)),
      ),
      home: HomeScreen(),
    );
  }
}
