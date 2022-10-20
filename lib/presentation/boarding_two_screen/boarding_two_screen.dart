import 'controller/boarding_two_controller.dart';
import 'package:flutter/material.dart';
import 'package:omar_s_application2/core/app_export.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class BoardingTwoScreen extends GetWidget<BoardingTwoController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.blueA700,
            body: Container(
                width: size.width,
                child: Container(
                    child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                      Align(
                          alignment: Alignment.center,
                          child: Container(
                              width: size.width,
                              margin: getMargin(left: 14, top: 56, right: 14),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    GestureDetector(
                                        onTap: () {
                                          onTapImgArrowleft();
                                        },
                                        child: Padding(
                                            padding:
                                                getPadding(top: 2, bottom: 1),
                                            child: CommonImageView(
                                                svgPath: ImageConstant
                                                    .imgArrowleftWhiteA701,
                                                height: getVerticalSize(15.00),
                                                width:
                                                    getHorizontalSize(16.00)))),
                                    Text("lbl_what_s_new".tr,
                                        maxLines: null,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtPoppinsSemiBold32WhiteA701
                                            .copyWith(height: 1.41)),
                                    GestureDetector(
                                        onTap: () {
                                          onTapanyScreen();
                                        },
                                        child: Text("Next".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtPoppinsRegular16
                                                .copyWith(height: 1.00)))
                                  ]))),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          width: getHorizontalSize(279.00),
                          margin: getMargin(left: 14, top: 300),
                          child: Text(
                            "msg_pay_your_tution".tr,
                            maxLines: null,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtPoppinsSemiBold32WhiteA701
                                .copyWith(height: 1.41),
                          ),
                        ),
                      ),
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
                    ])))));
  }

  onTapImgArrowleft() {
    Get.back();
  }

  onTapTxtSkip() {
    Get.toNamed(AppRoutes.startScreen);
  }

  onTapanyScreen() {
    Get.toNamed(AppRoutes.boardingThreeScreen);
  }
}
