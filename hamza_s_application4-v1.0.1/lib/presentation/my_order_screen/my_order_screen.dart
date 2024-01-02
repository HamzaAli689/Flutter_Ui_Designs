import '../my_order_screen/widgets/myorder_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:hamza_s_application4/core/app_export.dart';
import 'package:hamza_s_application4/widgets/app_bar/appbar_image.dart';
import 'package:hamza_s_application4/widgets/app_bar/custom_app_bar.dart';

class MyOrderScreen extends StatelessWidget {
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
                      onTapArrowleft4(context);
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
                          padding: getPadding(left: 22, top: 25),
                          child: Text("My order",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle
                                  .txtPlayfairDisplayItalicRegular40Bluegray900)),
                      Container(
                          height: getVerticalSize(703),
                          width: double.maxFinite,
                          margin: getMargin(top: 14),
                          child: Stack(
                              alignment: Alignment.bottomCenter,
                              children: [
                                Align(
                                    alignment: Alignment.topLeft,
                                    child: Padding(
                                        padding: getPadding(
                                            left: 24, right: 49, bottom: 46),
                                        child: ListView.separated(
                                            physics:
                                                NeverScrollableScrollPhysics(),
                                            shrinkWrap: true,
                                            separatorBuilder: (context, index) {
                                              return SizedBox(
                                                  height: getVerticalSize(24));
                                            },
                                            itemCount: 3,
                                            itemBuilder: (context, index) {
                                              return MyorderItemWidget();
                                            }))),
                                Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Container(
                                        height: getVerticalSize(249),
                                        width: double.maxFinite,
                                        child: Stack(
                                            alignment: Alignment.topCenter,
                                            children: [
                                              Align(
                                                  alignment:
                                                      Alignment.bottomCenter,
                                                  child: GestureDetector(
                                                      onTap: () {
                                                        onTapColumncheckout(
                                                            context);
                                                      },
                                                      child: Container(
                                                          padding: getPadding(
                                                              left: 156,
                                                              top: 33,
                                                              right: 156,
                                                              bottom: 33),
                                                          decoration: AppDecoration
                                                              .fillBluegray900,
                                                          child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .min,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              children: [
                                                                Text("Checkout",
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
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
                                                                    alignment:
                                                                        Alignment
                                                                            .center,
                                                                    margin: getMargin(
                                                                        top: 6,
                                                                        bottom:
                                                                            3))
                                                              ])))),
                                              Align(
                                                  alignment:
                                                      Alignment.topCenter,
                                                  child: Container(
                                                      width: double.maxFinite,
                                                      margin: getMargin(
                                                          bottom: 115),
                                                      padding: getPadding(
                                                          left: 33,
                                                          top: 12,
                                                          right: 33,
                                                          bottom: 12),
                                                      decoration: AppDecoration
                                                          .gradientWhiteA70000WhiteA700,
                                                      child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .end,
                                                          children: [
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left: 2,
                                                                        top: 49,
                                                                        bottom:
                                                                            11),
                                                                child: Text(
                                                                    "Total",
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtPlayfairDisplayMedium36Black900)),
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        top:
                                                                            60),
                                                                child: RichText(
                                                                    text: TextSpan(
                                                                        children: [
                                                                          TextSpan(
                                                                              text: "",
                                                                              style: TextStyle(color: ColorConstant.black900, fontSize: getFontSize(36), fontFamily: 'Playfair Display', fontWeight: FontWeight.w500)),
                                                                          TextSpan(
                                                                              text: "11",
                                                                              style: TextStyle(color: ColorConstant.black900, fontSize: getFontSize(46), fontFamily: 'Playfair Display', fontWeight: FontWeight.w500)),
                                                                          TextSpan(
                                                                              text: "6",
                                                                              style: TextStyle(color: ColorConstant.black900, fontSize: getFontSize(36), fontFamily: 'Playfair Display', fontWeight: FontWeight.w500))
                                                                        ]),
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left))
                                                          ])))
                                            ])))
                              ]))
                    ]))));
  }

  onTapColumncheckout(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.paymentScreen);
  }

  onTapArrowleft4(BuildContext context) {
    Navigator.pop(context);
  }
}
