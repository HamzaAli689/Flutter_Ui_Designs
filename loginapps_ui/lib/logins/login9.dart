import 'package:flutter/material.dart';
import '../widgets/assets.dart';


class LoginNinePage extends StatelessWidget {
  static const String path = "lib/src/pages/login/login9.dart";

  const LoginNinePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Stack(
              fit: StackFit.expand,
              children: [
                Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(images[0]),
                      fit: BoxFit.cover,
                    ),
                  ),
                  foregroundDecoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.7),
                  ),
                ),
                if (MediaQuery.of(context).viewInsets == EdgeInsets.zero)
                  const Padding(
                    padding: EdgeInsets.only(top: kToolbarHeight),
                    child: Text(
                      "Beautiful App",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),

              ],
            ),
          ),
          if (MediaQuery.of(context).viewInsets == EdgeInsets.zero)
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.all(32.0),
                elevation: 0,
                foregroundColor: Colors.white,
                backgroundColor: Colors.deepOrange,
              ),
              child: Text("Continue".toUpperCase()),
              onPressed: () {},
            )
        ],
      ),
    );
  }
}
