import 'package:flutter/material.dart';
import 'package:hamza_s_application4/core/app_export.dart';
import 'package:hamza_s_application4/widgets/app_bar/appbar_image.dart';
import 'package:hamza_s_application4/widgets/app_bar/custom_app_bar.dart';

class DiscoverScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray30001,
            appBar: CustomAppBar(
                height: getVerticalSize(50),
                leadingWidth: 48,
                leading: AppbarImage(
                    height: getSize(24),
                    width: getSize(24),
                    svgPath: ImageConstant.imgGroup36,
                    margin: getMargin(left: 24, top: 13, bottom: 13),
                    onTap: () {
                      onTapArrowleft(context);
                    }),
                actions: [
                  AppbarImage(
                      height: getSize(24),
                      width: getSize(24),
                      svgPath: ImageConstant.imgSearchBlueGray900,
                      margin: getMargin(left: 24, top: 13, right: 13)),
                  AppbarImage(
                      height: getSize(24),
                      width: getSize(24),
                      svgPath: ImageConstant.imgBag,
                      margin: getMargin(left: 24, top: 13, right: 13)),
                  AppbarImage(
                      height: getSize(24),
                      width: getSize(24),
                      svgPath: ImageConstant.imgMenuBlueGray900,
                      margin: getMargin(left: 24, top: 13, right: 37))
                ]),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 34, top: 21, right: 34, bottom: 21),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("Discover",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle
                              .txtPlayfairDisplayItalicRegular40Bluegray900),
                      Padding(
                          padding: getPadding(top: 4),
                          child: Text("Discover your products",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPlayfairDisplayMedium14)),
                      Container(
                          margin: getMargin(left: 7, top: 50, right: 6),
                          padding: getPadding(
                              left: 155, top: 38, right: 155, bottom: 38),
                          decoration: AppDecoration.outlineGray70001.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder30),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                CustomImageView(
                                    svgPath: ImageConstant.imgPlusBlueGray900,
                                    height: getSize(22),
                                    width: getSize(22))
                              ])),
                      Container(
                          margin: getMargin(left: 7, top: 41, right: 6),
                          decoration: AppDecoration.fillLightgreen50.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder30),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                    width: getHorizontalSize(80),
                                    margin: getMargin(
                                        left: 35, top: 34, bottom: 94),
                                    child: RichText(
                                        text: TextSpan(children: [
                                          TextSpan(
                                              text: "Shirt\n",
                                              style: TextStyle(
                                                  color: ColorConstant.gray400,
                                                  fontSize: getFontSize(16),
                                                  fontFamily:
                                                      'Playfair Display',
                                                  fontWeight: FontWeight.w500)),
                                          TextSpan(
                                              text: "Sleeve",
                                              style: TextStyle(
                                                  color:
                                                      ColorConstant.blueGray900,
                                                  fontSize: getFontSize(28),
                                                  fontFamily:
                                                      'Playfair Display',
                                                  fontWeight: FontWeight.w500))
                                        ]),
                                        textAlign: TextAlign.left)),
                                CustomImageView(
                                    imagePath: ImageConstant.imgImage2,
                                    height: getVerticalSize(181),
                                    width: getHorizontalSize(116))
                              ])),
                      Container(
                          margin:
                              getMargin(left: 7, top: 20, right: 6, bottom: 5),
                          decoration: AppDecoration.fillGray100.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder30),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Container(
                                    width: getHorizontalSize(150),
                                    margin: getMargin(
                                        left: 35, top: 35, bottom: 89),
                                    child: RichText(
                                        text: TextSpan(children: [
                                          TextSpan(
                                              text: "Sweater\n",
                                              style: TextStyle(
                                                  color: ColorConstant.gray400,
                                                  fontSize: getFontSize(16),
                                                  fontFamily:
                                                      'Playfair Display',
                                                  fontWeight: FontWeight.w500)),
                                          TextSpan(
                                              text: "Long Sleeve",
                                              style: TextStyle(
                                                  color:
                                                      ColorConstant.blueGray900,
                                                  fontSize: getFontSize(28),
                                                  fontFamily:
                                                      'Playfair Display',
                                                  fontWeight: FontWeight.w500))
                                        ]),
                                        textAlign: TextAlign.left)),
                                CustomImageView(
                                    imagePath: ImageConstant.imgImage3,
                                    height: getVerticalSize(181),
                                    width: getHorizontalSize(119),
                                    margin: getMargin(left: 29))
                              ]))
                    ]))));
  }

  onTapArrowleft(BuildContext context) {
    Navigator.pop(context);
  }
}
