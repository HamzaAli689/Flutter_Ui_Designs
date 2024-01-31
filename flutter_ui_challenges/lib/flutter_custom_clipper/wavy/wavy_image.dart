import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../clipper/wavy_image_clipper.dart';
import '../widgets/container_black.dart';

class WavyImage extends StatelessWidget {
  final String img;

  WavyImage(this.img, {required image});

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    return ClipPath(
      child: Stack(
        children: <Widget>[
          Image.asset(
            img,
            fit: BoxFit.cover,
            height: 1150.w,
          ),
          ContainerBlack(
            heightScreen: 1150.w,
          ),
        ],
      ),
      clipper: WavyImageClipper(),
    );
  }
}