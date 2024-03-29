// Copyright 2019 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.
import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'circular_clock_master/circle_clock.dart';

void main() {
  if (!kIsWeb && Platform.isMacOS) {
    // TODO(gspencergoog): Update this when TargetPlatform includes macOS.
    debugDefaultTargetPlatformOverride = TargetPlatform.fuchsia;
  }
  runApp(ClockCustomizer((ClockModel model) => CircleClock(model)));
}




///////////////////////////////////////////////////////////////////////////////////////////////////
//(import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'flutter_custom_clipper/wavy/wavy_app_bar.dart';
// import 'flutter_custom_clipper/wavy/wavy_bottom_navigation_bar.dart';
// import 'flutter_custom_clipper/wavy/wavy_image.dart';
// import 'flutter_custom_clipper/widgets/container_black.dart';
//
// void main() => runApp(MyApp());
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: MyHomePage(),
//     );
//   }
// }
//
// class MyHomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     ScreenUtil.init(context);
//     MediaQueryData mediaQueryData = MediaQuery.of(context);
//     double heightScreen = mediaQueryData.size.height;
//     return Scaffold(
//       body: Container(
//         width: double.infinity,
//         height: double.infinity,
//         child: Stack(
//           children: <Widget>[
//             Column(
//               children: <Widget>[
//                 Expanded(
//                   child: Stack(
//                     children: <Widget>[
//                       Image.asset(
//                         'assets/images/img_scenic_mountain.jpg',
//                         fit: BoxFit.cover,
//                         height: heightScreen / 2,
//                       ),
//                       ContainerBlack(heightScreen: heightScreen),
//                     ],
//                   ),
//                 ),
//                 Expanded(
//                   child: Stack(
//                     children: <Widget>[
//                       Image.asset(
//                         'assets/images/img_water_drop.jpg',
//                         fit: BoxFit.cover,
//                         height: heightScreen / 2,
//                       ),
//                       ContainerBlack(heightScreen: heightScreen),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//             Align(
//               alignment: Alignment.center,
//               child: WavyImage(
//                 image: 'assets/images/img_peaceful_piano.jpg', // Provide image path
//               ),
//             ),
//             _buildWidgetColumnText(),
//             Align(
//               alignment: Alignment.bottomCenter,
//               child: WavyBottomNavigationBar(),
//             ),
//             Align(
//               alignment: Alignment.bottomCenter,
//               child: Padding(
//                 padding: EdgeInsets.only(bottom: 100.w + ScreenUtil().bottomBarHeight),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceAround,
//                   children: <Widget>[
//                     _buildWidgetCircleMenu(Icons.bubble_chart, false),
//                     _buildWidgetCircleMenu(Icons.accessibility_new, true),
//                     _buildWidgetCircleMenu(Icons.brightness_3, false),
//                   ],
//                 ),
//               ),
//             ),
//             Align(
//               alignment: Alignment.bottomCenter,
//               child: Padding(
//                 padding: EdgeInsets.only(
//                   bottom: ScreenUtil().bottomBarHeight > 0 ? ScreenUtil().bottomBarHeight : 24.w,
//                 ),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceAround,
//                   children: <Widget>[
//                     _buildWidgetTextMenuCircle('Focus', false),
//                     _buildWidgetTextMenuCircle('Relax', true),
//                     _buildWidgetTextMenuCircle('Sleep', false),
//                   ],
//                 ),
//               ),
//             ),
//             Align(
//               alignment: Alignment.topCenter,
//               child: WavyAppBar(),
//             ),
//             Align(
//               alignment: Alignment.topCenter,
//               child: Padding(
//                 padding: EdgeInsets.only(top: ScreenUtil().statusBarHeight + 50.w),
//                 child: Container(
//                   width: 128.w,
//                   height: 128.w,
//                   decoration: BoxDecoration(
//                     shape: BoxShape.circle,
//                     border: Border.all(
//                       color: Colors.white,
//                       width: 2,
//                     ),
//                     image: DecorationImage(
//                       image: AssetImage(
//                         'assets/images/img_avatar.jpg',
//                       ),
//                       fit: BoxFit.cover,
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//             Align(
//               alignment: Alignment.topCenter,
//               child: Padding(
//                 padding: EdgeInsets.only(top: ScreenUtil().statusBarHeight),
//                 child: Container(
//                   width: double.infinity,
//                   height: 100.w + ScreenUtil().statusBarHeight,
//                   child: Row(
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     mainAxisAlignment: MainAxisAlignment.spaceAround,
//                     children: <Widget>[
//                       Icon(
//                         Icons.wifi_tethering,
//                         color: Colors.white,
//                         size: 48.w,
//                       ),
//                       Container(),
//                       Stack(
//                         children: [
//                           Align(
//                             alignment: Alignment.center,
//                             child: Icon(
//                               Icons.notifications,
//                               color: Colors.white,
//                               size: 48.w,
//                             ),
//                           ),
//                           Align(
//                             alignment: Alignment.center,
//                             child: Padding(
//                               padding: EdgeInsets.only(
//                                 left: 24.w,
//                                 bottom: 28.w,
//                               ),
//                               child: Container(
//                                 width: 32.w,
//                                 height: 32.w,
//                                 decoration: BoxDecoration(
//                                   color: Colors.black,
//                                   shape: BoxShape.circle,
//                                 ),
//                                 child: Center(
//                                   child: Padding(
//                                     padding: EdgeInsets.all(2),
//                                     child: Text(
//                                       '1',
//                                       style: TextStyle(
//                                         color: Colors.white,
//                                         fontSize: 20.sp,
//                                       ),
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
//
//   Widget _buildWidgetTextMenuCircle(String text, bool isActive) {
//     return Text(
//       text,
//       style: TextStyle(
//         color: isActive ? Colors.white : Colors.grey[800],
//       ),
//     );
//   }
//
//   Widget _buildWidgetCircleMenu(IconData iconData, bool isActive) {
//     return Container(
//       decoration: BoxDecoration(
//         color: isActive ? Colors.white : Colors.white.withOpacity(0.1),
//         shape: BoxShape.circle,
//         border: isActive
//             ? Border.all(
//           color: Colors.grey.shade800,
//           width: 2,
//         )
//             : null,
//       ),
//       width: 150.w,
//       height: 150.w,
//       child: Icon(
//         iconData,
//         color: isActive ? Colors.grey[900] : Colors.white.withOpacity(0.5),
//       ),
//     );
//   }
//
//   Widget _buildWidgetColumnText() {
//     return Center(
//       child: Column(
//         children: <Widget>[
//           Expanded(
//             child: Padding(
//               padding: EdgeInsets.only(top: ScreenUtil().statusBarHeight + 40.w),
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: <Widget>[
//                   _buildWidgetTitle('Meditation'),
//                   _buildWidgetSubtitle('Breathe, Sense, Feel'),
//                 ],
//               ),
//             ),
//           ),
//           Expanded(
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: <Widget>[
//                 _buildWidgetTitle('Piano'),
//                 _buildWidgetSubtitle('Relax and indulge'),
//               ],
//             ),
//           ),
//           Expanded(
//             child: Padding(
//               padding: EdgeInsets.only(bottom: ScreenUtil().bottomBarHeight + 200.w),
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: <Widget>[
//                   _buildWidgetTitle('Calm'),
//                   _buildWidgetSubtitle('Slow down and relax'),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
//
//   Widget _buildWidgetTitle(String text) {
//     return Text(
//       text,
//       style: TextStyle(
//         color: Colors.white,
//         fontFamily: 'MazzardSemiBold',
//         fontSize: ScreenUtil().setSp(128),
//       ),
//     );
//   }
//
//   Widget _buildWidgetSubtitle(String text) {
//     return Text(
//       text,
//       style: TextStyle(
//         color: Colors.white70,
//         fontFamily: 'MazzardSemiBold',
//         fontSize: ScreenUtil().setSp(42),
//         height: ScreenUtil().setHeight(1),
//       ),
//     );
//   }
// })


//////////////////////////////////////////////////////////////////////////////////////////////

//(import 'package:flutter/material.dart';
// import 'fitness_dashboard/screen/activity_page/activity_page.dart';
// import 'fitness_dashboard/screen/onboarding/onboarding_page.dart';
//
// void main() => runApp(MyApp());
//
// class MyApp extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       initialRoute: '/',
//       routes: <String, WidgetBuilder>{
//         '/onboarding': (BuildContext context) => OnBoardingPage(),
//         '/activity': (BuildContext context) => ActivityPage(),
//       },
//       home: OnBoardingPage(),
//     );
//   }
// })

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