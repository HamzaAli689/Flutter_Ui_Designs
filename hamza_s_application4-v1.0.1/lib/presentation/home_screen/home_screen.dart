import 'package:flutter/material.dart';
import 'package:hamza_s_application4/core/app_export.dart';
import 'package:hamza_s_application4/widgets/app_bar/appbar_image.dart';
import 'package:hamza_s_application4/widgets/app_bar/custom_app_bar.dart';

import '../menu_screen/menu_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.gray30001,
        appBar: CustomAppBar(
          height: getVerticalSize(
            49,
          ),
          title: Padding(
            padding: getPadding(
              left: 23,
            ),
            child: Text(
              "Street Style",
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtJosefinSansBold24,
            ),
          ),
          actions: [
            AppbarImage(
              height: getSize(
                24,
              ),
              width: getSize(
                24,
              ),
              svgPath: ImageConstant.imgSearchBlueGray900,
              margin: getMargin(
                left: 23,
                top: 13,
                right: 12,
              ),
            ),
            AppbarImage(
              height: getSize(
                24,
              ),
              width: getSize(
                24,
              ),
              svgPath: ImageConstant.imgBag,
              margin: getMargin(
                left: 24,
                top: 13,
                right: 12,
              ),
            ),
            AppbarImage(
              height: getSize(
                24,
              ),
              width: getSize(
                24,
              ),
              svgPath: ImageConstant.imgMenuBlueGray900,
              margin: getMargin(
                left: 24,
                top: 13,
                right: 35,
              ),
            ),
          ],
        ),
        body: Container(
          width: double.maxFinite,
          padding: getPadding(
            left: 40,
            top: 55,
            right: 40,
            bottom: 55,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: double.maxFinite,
                child: Container(
                  width: getHorizontalSize(
                    334,
                  ),
                  padding: getPadding(
                    left: 31,
                    top: 38,
                    right: 31,
                    bottom: 38,
                  ),
                  decoration: AppDecoration.outlineGray500.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder30,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: getPadding(
                          top: 1,
                        ),
                        child: SizedBox(
                          width: getHorizontalSize(
                            150,
                          ),
                          child: Divider(
                            height: getVerticalSize(
                              1,
                            ),
                            thickness: getVerticalSize(
                              1,
                            ),
                            color: ColorConstant.gray800,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => MenuScreen()));
                            print("Hamza ALi");
                          },
                          child: Container(
                            width: getHorizontalSize(
                              253,
                            ),
                            margin: getMargin(
                              top: 36,
                              right: 17,
                            ),
                            child: Text(
                              "BIG\nSEASONAL \nSALE",
                              maxLines: null,
                              textAlign: TextAlign.center,
                              style: AppStyle.txtPlayfairDisplayItalicRegular50,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          top: 13,
                        ),
                        child: Text(
                          "SAVE UP TO",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtPlayfairDisplayRomanBold16,
                        ),
                      ),
                      CustomImageView(
                        svgPath: ImageConstant.imgVolume,
                        height: getVerticalSize(
                          36,
                        ),
                        width: getHorizontalSize(
                          94,
                        ),
                        margin: getMargin(
                          top: 4,
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          top: 39,
                        ),
                        child: SizedBox(
                          width: getHorizontalSize(
                            150,
                          ),
                          child: Divider(
                            height: getVerticalSize(
                              1,
                            ),
                            thickness: getVerticalSize(
                              1,
                            ),
                            color: ColorConstant.gray800,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 63,
                  top: 47,
                ),
                child: Text(
                  "BestSellers",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtPlayfairDisplayItalicRegular40,
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                  width: getHorizontalSize(
                    294,
                  ),
                  margin: getMargin(
                    left: 19,
                    top: 2,
                    right: 20,
                    bottom: 5,
                  ),
                  child: Text(
                    "Fuel your workout routine with extra legroom and fewer distractions in our latest shorts.",
                    maxLines: null,
                    textAlign: TextAlign.center,
                    style: AppStyle.txtPlayfairDisplayRomanBold14,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
