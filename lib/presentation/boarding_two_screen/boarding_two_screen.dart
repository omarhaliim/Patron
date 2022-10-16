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
                child: GestureDetector(
                    onTap: () {
                      onTapanyScreen();
                    },
                child: SingleChildScrollView(

                    child: Container(
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.end,
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
                                    Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                              padding: getPadding(bottom: 2),
                                              child: Text("lbl_what_s_new".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtPoppinsMedium16
                                                      .copyWith(height: 1.00))),
                                          GestureDetector(
                                              onTap: () {
                                                onTapTxtSkip();
                                              },
                                              child: Padding(
                                                  padding: getPadding(left: 91),
                                                  child: Text("lbl_skip".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtPoppinsRegular16
                                                          .copyWith(
                                                              height: 1.00))))
                                        ])
                                  ]))),
                      Padding(
                          padding: getPadding(left: 14, top: 488, right: 14),
                          child: Text("msg_pay_your_tution".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsSemiBold32WhiteA701
                                  .copyWith(height: 1.00))),
                      Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                              height: getVerticalSize(10.00),
                              margin: getMargin(
                                  left: 157, top: 132, right: 157, bottom: 20),
                              child: SmoothIndicator(
                                  offset: 0,
                                  count: 3,
                                  axisDirection: Axis.horizontal,
                                  effect: ScrollingDotsEffect(
                                      spacing: 11.5,
                                      activeDotColor:
                                          ColorConstant.fromHex("#1212121D"),
                                      dotColor: ColorConstant.whiteA701,
                                      dotHeight: getVerticalSize(5.00),
                                      dotWidth: getHorizontalSize(5.00)))))
                    ])))))));
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
