import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../clipper/wavy_bottom_navigation_bar_clipper.dart';

class WavyBottomNavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    return ClipPath(
      child: Container(
        color: Colors.black.withOpacity(0.5),
        height: MediaQuery.of(context).padding.top + 180.w,
      ),
      clipper: WavyBottomNavigationBarClipper(),
    );
  }
}