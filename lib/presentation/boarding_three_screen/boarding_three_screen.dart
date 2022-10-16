import 'controller/boarding_three_controller.dart';
import 'package:flutter/material.dart';
import 'package:omar_s_application2/core/app_export.dart';
import 'package:omar_s_application2/widgets/custom_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class BoardingThreeScreen extends GetWidget<BoardingThreeController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.blueA700,
            body: Container(
                width: size.width,
                child: SingleChildScrollView(
                    child: Container(
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                      Container(
                          width: size.width,
                          margin: getMargin(left: 14, top: 56, right: 14),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                GestureDetector(
                                    onTap: () {
                                      onTapImgArrowleft();
                                    },
                                    child: Padding(
                                        padding: getPadding(top: 2),
                                        child: CommonImageView(
                                            svgPath: ImageConstant
                                                .imgArrowleftWhiteA700,
                                            height: getVerticalSize(15.00),
                                            width: getHorizontalSize(16.00)))),
                                Padding(
                                    padding: getPadding(bottom: 1),
                                    child: Text("lbl_what_s_new".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtPoppinsMedium16
                                            .copyWith(height: 1.00)))
                              ])),
                      Container(
                          width: getHorizontalSize(292.00),
                          margin: getMargin(left: 14, top: 490, right: 14),
                          child: Text("msg_explore_secure".tr,
                              maxLines: null,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsSemiBold32WhiteA701
                                  .copyWith(height: 1.41))),
                      CustomButton(
                          width: 240,
                          text: "lbl_continue".tr.toUpperCase(),
                          margin: getMargin(left: 14, top: 41, right: 14),
                          variant: ButtonVariant.FillWhiteA700,
                          fontStyle: ButtonFontStyle.PoppinsMedium16BlueA700,
                          onTap: onTapStartPage,
                          alignment: Alignment.center
                      ),
                      Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                              height: getVerticalSize(10.00),
                              margin: getMargin(
                                  left: 157, top: 42, right: 157, bottom: 20),
                              child: SmoothIndicator(
                                  offset: 0,
                                  count: 3,
                                  axisDirection: Axis.horizontal,
                                  effect: ScrollingDotsEffect(
                                      spacing: 11,
                                      activeDotColor:
                                          ColorConstant.fromHex("#1212121D"),
                                      dotColor: ColorConstant.whiteA700,
                                      dotHeight: getVerticalSize(5.00),
                                      dotWidth: getHorizontalSize(5.00)))))
                    ]))))));
  }

  onTapImgArrowleft() {
    Get.back();
  }
  onTapStartPage() {
    Get.toNamed(AppRoutes.startScreen);
  }
}
