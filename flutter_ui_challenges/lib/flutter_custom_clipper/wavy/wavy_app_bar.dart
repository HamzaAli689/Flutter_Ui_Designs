import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../clipper/wavy_app_bar_clipper.dart';

class WavyAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    return ClipPath(
      child: Container(
        color: Color(0xFFC3B7AB),
        height: MediaQuery.of(context).padding.top + 100.w,
      ),
      clipper: WavyAppBarClipper(),
    );
  }
}
