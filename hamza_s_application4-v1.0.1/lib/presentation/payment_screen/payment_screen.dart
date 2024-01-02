import 'package:flutter/material.dart';
import 'package:hamza_s_application4/core/app_export.dart';
import 'package:hamza_s_application4/widgets/app_bar/appbar_image.dart';
import 'package:hamza_s_application4/widgets/app_bar/custom_app_bar.dart';
import 'package:hamza_s_application4/widgets/custom_icon_button.dart';

class PaymentScreen extends StatelessWidget {
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
                      onTapArrowleft5(context);
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
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                          padding: getPadding(left: 22, top: 29),
                          child: Text("Payment",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle
                                  .txtPlayfairDisplayItalicRegular40Bluegray900)),
                      Padding(
                          padding: getPadding(left: 24, top: 14),
                          child: Text("My Cards",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle
                                  .txtPlayfairDisplayMedium22Bluegray900)),
                      Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                              padding: getPadding(left: 24, top: 17),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Expanded(
                                        child: Container(
                                            decoration: AppDecoration
                                                .fillGray900
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder30),
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.end,
                                                children: [
                                                  CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgChaselogo2007,
                                                      height:
                                                          getVerticalSize(16),
                                                      width:
                                                          getHorizontalSize(91),
                                                      margin: getMargin(
                                                          left: 27, top: 27)),
                                                  Padding(
                                                      padding: getPadding(
                                                          top: 21, right: 26),
                                                      child: Row(children: [
                                                        Container(
                                                            decoration: AppDecoration
                                                                .gradientGray8008fGray9008f
                                                                .copyWith(
                                                                    borderRadius:
                                                                        BorderRadiusStyle
                                                                            .customBorderBL30),
                                                            child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .min,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .end,
                                                                children: [
                                                                  Container(
                                                                      width: getHorizontalSize(
                                                                          154),
                                                                      margin: getMargin(
                                                                          top:
                                                                              40),
                                                                      padding: getPadding(
                                                                          left:
                                                                              27,
                                                                          right:
                                                                              27),
                                                                      decoration: AppDecoration
                                                                          .txtGradientGray80001Gray900
                                                                          .copyWith(
                                                                              borderRadius: BorderRadiusStyle.txtCustomBorderBL30),
                                                                      child: RichText(
                                                                          text: TextSpan(children: [
                                                                            TextSpan(
                                                                                text: ". . . .",
                                                                                style: TextStyle(color: ColorConstant.whiteA700, fontSize: getFontSize(32), fontFamily: 'Playfair Display', fontWeight: FontWeight.w500)),
                                                                            TextSpan(
                                                                                text: "  0112",
                                                                                style: TextStyle(color: ColorConstant.whiteA700, fontSize: getFontSize(22), fontFamily: 'Playfair Display', fontWeight: FontWeight.w500))
                                                                          ]),
                                                                          textAlign: TextAlign.left))
                                                                ])),
                                                        Container(
                                                            height:
                                                                getVerticalSize(
                                                                    32),
                                                            width:
                                                                getHorizontalSize(
                                                                    51),
                                                            margin: getMargin(
                                                                left: 58,
                                                                top: 77,
                                                                bottom: 21),
                                                            child: Stack(
                                                                alignment: Alignment
                                                                    .centerLeft,
                                                                children: [
                                                                  Align(
                                                                      alignment:
                                                                          Alignment
                                                                              .centerRight,
                                                                      child: Container(
                                                                          height: getSize(
                                                                              32),
                                                                          width: getSize(
                                                                              32),
                                                                          decoration: BoxDecoration(
                                                                              color: ColorConstant.yellow800,
                                                                              borderRadius: BorderRadius.circular(getHorizontalSize(16))))),
                                                                  Align(
                                                                      alignment:
                                                                          Alignment
                                                                              .centerLeft,
                                                                      child: Container(
                                                                          height: getSize(
                                                                              32),
                                                                          width: getSize(
                                                                              32),
                                                                          decoration: BoxDecoration(
                                                                              color: ColorConstant.deepOrangeA400,
                                                                              borderRadius: BorderRadius.circular(getHorizontalSize(16)))))
                                                                ]))
                                                      ]))
                                                ]))),
                                    CustomImageView(
                                        imagePath:
                                            ImageConstant.imgRectanglecopy,
                                        height: getVerticalSize(153),
                                        width: getHorizontalSize(41),
                                        margin: getMargin(
                                            left: 16, top: 21, bottom: 21))
                                  ]))),
                      CustomIconButton(
                          height: 74,
                          width: 50,
                          margin: getMargin(top: 22),
                          variant: IconButtonVariant.OutlineGray70001,
                          alignment: Alignment.center,
                          child: CustomImageView(
                              svgPath: ImageConstant.imgPlusBlack900)),
                      Container(
                          height: getVerticalSize(340),
                          width: double.maxFinite,
                          margin: getMargin(top: 21),
                          child: Stack(
                              alignment: Alignment.bottomCenter,
                              children: [
                                Align(
                                    alignment: Alignment.topCenter,
                                    child: Padding(
                                        padding:
                                            getPadding(left: 25, right: 23),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Text("Payment option",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtPlayfairDisplayMedium22),
                                              Container(
                                                  width: double.maxFinite,
                                                  child: Container(
                                                      width: getHorizontalSize(
                                                          366),
                                                      margin:
                                                          getMargin(top: 17),
                                                      padding:
                                                          getPadding(all: 21),
                                                      decoration: AppDecoration
                                                          .outlineGray70001
                                                          .copyWith(
                                                              borderRadius:
                                                                  BorderRadiusStyle
                                                                      .circleBorder25),
                                                      child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            CustomImageView(
                                                                svgPath:
                                                                    ImageConstant
                                                                        .imgShape,
                                                                height:
                                                                    getVerticalSize(
                                                                        26),
                                                                width:
                                                                    getHorizontalSize(
                                                                        64),
                                                                margin:
                                                                    getMargin(
                                                                        top: 2))
                                                          ])))
                                            ]))),
                                Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Container(
                                              margin: getMargin(left: 2),
                                              padding: getPadding(
                                                  left: 31,
                                                  top: 12,
                                                  right: 31,
                                                  bottom: 12),
                                              decoration: AppDecoration
                                                  .gradientWhiteA70000WhiteA700,
                                              child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.end,
                                                  children: [
                                                    Padding(
                                                        padding: getPadding(
                                                            left: 4,
                                                            top: 49,
                                                            bottom: 11),
                                                        child: Text("Total",
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtPlayfairDisplayMedium36Black900)),
                                                    Padding(
                                                        padding:
                                                            getPadding(top: 60),
                                                        child: RichText(
                                                            text: TextSpan(
                                                                children: [
                                                                  TextSpan(
                                                                      text: "",
                                                                      style: TextStyle(
                                                                          color: ColorConstant
                                                                              .black900,
                                                                          fontSize: getFontSize(
                                                                              36),
                                                                          fontFamily:
                                                                              'Playfair Display',
                                                                          fontWeight:
                                                                              FontWeight.w500)),
                                                                  TextSpan(
                                                                      text:
                                                                          "11",
                                                                      style: TextStyle(
                                                                          color: ColorConstant
                                                                              .black900,
                                                                          fontSize: getFontSize(
                                                                              46),
                                                                          fontFamily:
                                                                              'Playfair Display',
                                                                          fontWeight:
                                                                              FontWeight.w500)),
                                                                  TextSpan(
                                                                      text: "6",
                                                                      style: TextStyle(
                                                                          color: ColorConstant
                                                                              .black900,
                                                                          fontSize: getFontSize(
                                                                              36),
                                                                          fontFamily:
                                                                              'Playfair Display',
                                                                          fontWeight:
                                                                              FontWeight.w500))
                                                                ]),
                                                            textAlign:
                                                                TextAlign.left))
                                                  ])),
                                          Container(
                                              width: double.maxFinite,
                                              child: Container(
                                                  padding: getPadding(
                                                      left: 161,
                                                      top: 36,
                                                      right: 161,
                                                      bottom: 36),
                                                  decoration: AppDecoration
                                                      .fillBluegray900,
                                                  child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        Text("Payment",
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtPlayfairDisplayRomanBold22),
                                                        CustomImageView(
                                                            svgPath: ImageConstant
                                                                .imgTelevision,
                                                            height:
                                                                getVerticalSize(
                                                                    13),
                                                            width:
                                                                getHorizontalSize(
                                                                    91),
                                                            margin: getMargin(
                                                                top: 3,
                                                                bottom: 1))
                                                      ])))
                                        ]))
                              ]))
                    ]))));
  }

  onTapArrowleft5(BuildContext context) {
    Navigator.pop(context);
  }
}
