import 'dart:io';

import 'controller/boarding_one_controller.dart';
import 'package:flutter/material.dart';
import 'package:omar_s_application2/core/app_export.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'dart:async';
import 'package:colour/colour.dart';

class BoardingOneScreen extends GetWidget<BoardingOneController> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        exit(0);
      },
      child: SafeArea(
          child: Scaffold(
              backgroundColor: ColorConstant.blueA700,
              body: Container(
                  width: size.width,
                  child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                            padding: getPadding(left: 20, top: 56, right: 20),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                      padding: getPadding(left: 30),
                                      child: Text("lbl_what_s_new".tr,
                                          maxLines: null,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtPoppinsSemiBold32WhiteA701
                                              .copyWith(height: 1.41))),
                                  Container(
                                    height: 50,
                                    width: 50,
                                    child: FloatingActionButton(
                                        foregroundColor: ColorConstant.gray100,
                                        backgroundColor: Colour(0, 100, 254),
                                        onPressed: onTapNext,
                                        child: Icon(
                                          Icons.arrow_forward_outlined,
                                          size: 30,
                                        )),
                                  )
                                ])),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                                width: getHorizontalSize(279.00),
                                margin: getMargin(left: 14, top: 300),
                                child: Text("msg_track_your_mone".tr,
                                    maxLines: null,
                                    textAlign: TextAlign.left,
                                    style: AppStyle
                                        .txtPoppinsSemiBold32WhiteA701
                                        .copyWith(height: 1.41)))),
                        Align(
                            alignment: Alignment.center,
                            child: Container(
                                height: getVerticalSize(10.00),
                                margin: getMargin(bottom: 20),
                                child: SmoothIndicator(
                                    offset: 0,
                                    count: 3,
                                    axisDirection: Axis.horizontal,
                                    effect: ScrollingDotsEffect(
                                        spacing: 12,
                                        activeDotColor:
                                            ColorConstant.fromHex("#1212121D"),
                                        dotColor: ColorConstant.whiteA701,
                                        dotHeight: getVerticalSize(5.00),
                                        dotWidth: getHorizontalSize(5.00)))))
                      ])))),
    );
  }

  onTapNext() {
    Get.toNamed(AppRoutes.boardingTwoScreen);
  }
}
