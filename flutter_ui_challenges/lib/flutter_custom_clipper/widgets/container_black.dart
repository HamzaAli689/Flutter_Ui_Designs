import 'package:flutter/material.dart';

class ContainerBlack extends StatelessWidget {
  const ContainerBlack({
    required this.heightScreen,
  });

  final double heightScreen;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: heightScreen,
      color: Colors.black.withOpacity(0.5),
    );
  }
}
