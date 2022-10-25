import 'dart:io';

import 'package:colour/colour.dart';

import 'controller/successful_account_controller.dart';
import 'package:flutter/material.dart';
import 'package:omar_s_application2/core/app_export.dart';
import 'package:omar_s_application2/widgets/custom_button.dart';

class SuccessfulAccountScreen extends GetWidget<SuccessfulAccountController> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        exit(0);
      },
      child: SafeArea(
          child: Scaffold(
              //backgroundColor: ColorConstant.gray100,
              body: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: getPadding(top: 65),
                child: SizedBox(
                  width: 175,
                  child: LinearProgressIndicator(
                    backgroundColor: Color(0xffabc9f8),
                    minHeight: 4,
                    value: 1,
                  ),
                ),
              ),
            ),
            Container(
                height: getSize(160.00),
                width: getSize(160.00),
                margin: getMargin(left: 34, top: 165, right: 34),
                child: Card(
                    clipBehavior: Clip.antiAlias,
                    elevation: 0,
                    margin: EdgeInsets.all(0),
                    color: ColorConstant.blueA700,
                    shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(getHorizontalSize(80.00))),
                    child: Stack(children: [
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: getPadding(all: 40),
                              child: CommonImageView(
                                  svgPath: ImageConstant.imgVectorWhiteA700,
                                  height: getVerticalSize(44.00),
                                  width: getHorizontalSize(64.00))))
                    ]))),
            Text("lbl_success".tr.toUpperCase(),
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtPoppinsMedium24.copyWith(height: 1.00)),
            Container(
              margin: getMargin(bottom: 100, top: 100),
              child: ElevatedButton(
                child: Text('continue'.toUpperCase()),
                onPressed: () {
                  onTapBtnContinue();
                },
                style: ElevatedButton.styleFrom(
                    primary: Colour(0, 100, 254),
                    padding:
                        EdgeInsets.symmetric(horizontal: 85, vertical: 7.5),
                    textStyle: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 20,
                    )),
              ),
            ),
          ]))),
    );
  }

  onTapImgArrowleft() {
    Get.back();
  }

  onTapBtnContinue() {
    Get.toNamed(AppRoutes.homeScreen);
  }
}
