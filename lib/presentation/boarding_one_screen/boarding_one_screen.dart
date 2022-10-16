import 'controller/boarding_one_controller.dart';
import 'package:flutter/material.dart';
import 'package:omar_s_application2/core/app_export.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class BoardingOneScreen extends GetWidget<BoardingOneController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.blueA700,
            body: Container(
                width: size.width,
                child: GestureDetector(
                    onTap: () {
                      onTapanyScreen();
                    },
                child: SingleChildScrollView(

                    child: Container(
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                      Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                              padding: getPadding(left: 20, top: 56, right: 20),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                        padding: getPadding(bottom: 2),
                                        child: Text("lbl_what_s_new".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtPoppinsMedium16
                                                .copyWith(height: 1.00))),
                                    GestureDetector(
                                        onTap: () {
                                          onTapTxtSkip();
                                        },
                                        child: Padding(
                                            padding: getPadding(left: 91),
                                            child: Text("lbl_skip".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtPoppinsRegular16
                                                    .copyWith(height: 1.00))))
                                  ]))),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                              width: getHorizontalSize(279.00),
                              margin: getMargin(left: 14, top: 490, right: 14),
                              child: Text("msg_track_your_mone".tr,
                                  maxLines: null,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtPoppinsSemiBold32WhiteA701
                                      .copyWith(height: 1.41)))),
                      Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                              height: getVerticalSize(10.00),
                              margin: getMargin(
                                  left: 157, top: 123, right: 157, bottom: 20),
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
                    ])))))));
  }

  onTapTxtSkip() {
    Get.toNamed(AppRoutes.startScreen);
  }
  onTapanyScreen() {
    Get.toNamed(AppRoutes.boardingTwoScreen);
  }
}
