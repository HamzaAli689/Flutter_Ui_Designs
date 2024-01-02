import 'package:flutter/material.dart';
import 'package:hamza_s_application4/core/app_export.dart';
import 'package:hamza_s_application4/widgets/app_bar/appbar_image.dart';
import 'package:hamza_s_application4/widgets/app_bar/custom_app_bar.dart';

import '../product_screen/product_screen.dart';

class MenuScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray30001,
            appBar: CustomAppBar(
                height: getVerticalSize(50),
                leadingWidth: 74,
                leading: CustomImageView(
                    imagePath: ImageConstant.imgRectangle50x50,
                    height: getSize(50),
                    width: getSize(50),
                    radius: BorderRadius.circular(getHorizontalSize(25)),
                    margin: getMargin(left: 24)),
                title: Padding(
                    padding: getPadding(left: 22),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Text("Mildred Bennett",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle
                                      .txtPlayfairDisplayRomanBold16Bluegray900)),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding: getPadding(right: 37),
                                  child: Text("user@gmail.com",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtPlayfairDisplayItalicRegular12)))
                        ])),
                actions: [
                  AppbarImage(
                      height: getSize(24),
                      width: getSize(24),
                      svgPath: ImageConstant.imgClose,
                      margin:
                          getMargin(left: 24, top: 13, right: 24, bottom: 13))
                ]),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 37, top: 20, right: 37, bottom: 20),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      GestureDetector(
                          onTap: () {
                            onTapTxtDiscover(context);
                          },
                          child: Padding(
                              padding: getPadding(left: 1, top: 73),
                              child: Text("Discover",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle
                                      .txtPlayfairDisplayItalicRegular22))),
                      GestureDetector(
                          onTap: () {
                            onTapTxtShop(context);
                          },
                          child: Padding(
                              padding: getPadding(left: 1, top: 17),
                              child: Text("Shop",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle
                                      .txtPlayfairDisplayItalicRegular22))),
                      GestureDetector(
                          onTap: () {
                            onTapTxtFavorites(context);
                          },
                          child: Padding(
                              padding: getPadding(left: 1, top: 14),
                              child: Text("Favorites",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle
                                      .txtPlayfairDisplayItalicRegular22Bluegray900))),
                      InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => ProductScreen()));
                          print("Hamza");
                        },
                        child: Padding(
                            padding: getPadding(left: 1, top: 15),
                            child: Text("Inbox",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style:
                                    AppStyle.txtPlayfairDisplayItalicRegular22)),
                      ),
                      Padding(
                          padding: getPadding(top: 17),
                          child: Text("Ask an Expert",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style:
                                  AppStyle.txtPlayfairDisplayItalicRegular22)),
                      Padding(
                          padding: getPadding(top: 53),
                          child: SizedBox(
                              width: getHorizontalSize(138),
                              child: Divider(
                                  height: getVerticalSize(1),
                                  thickness: getVerticalSize(1),
                                  color: ColorConstant.gray60002,
                                  indent: getHorizontalSize(1)))),
                      Padding(
                          padding: getPadding(left: 1, top: 62),
                          child: Text("Settings",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style:
                                  AppStyle.txtPlayfairDisplayItalicRegular22)),
                      Spacer(),
                      CustomImageView(
                          svgPath: ImageConstant.imgArrowright,
                          height: getVerticalSize(43),
                          width: getHorizontalSize(70),
                          margin: getMargin(left: 1)),
                      Padding(
                          padding: getPadding(left: 1, top: 14),
                          child: Text("Log out",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle
                                  .txtPlayfairDisplayItalicRegular22Bluegray900))
                    ]))));
  }

  onTapTxtDiscover(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.discoverScreen);
  }

  onTapTxtShop(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.shopScreen);
  }

  onTapTxtFavorites(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.favoriteScreen);
  }
}
