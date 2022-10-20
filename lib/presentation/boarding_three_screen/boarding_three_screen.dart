import 'controller/boarding_three_controller.dart';
import 'package:flutter/material.dart';
import 'package:omar_s_application2/core/app_export.dart';
import 'package:omar_s_application2/widgets/custom_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:colour/colour.dart';

class BoardingThreeScreen extends GetWidget<BoardingThreeController> {
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
                                        svgPath:
                                            ImageConstant.imgArrowleftWhiteA700,
                                        height: getVerticalSize(15.00),
                                        width: getHorizontalSize(16.00)))),
                            Padding(
                                padding: getPadding(bottom: 1),
                                child: Text("lbl_what_s_new".tr,
                                    maxLines: null,
                                    textAlign: TextAlign.left,
                                    style: AppStyle
                                        .txtPoppinsSemiBold32WhiteA701
                                        .copyWith(height: 1.41))),
                            Text(''),
                          ],
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          width: getHorizontalSize(279.00),
                          margin: getMargin(left: 14, top: 300),
                          child: Text(
                            "msg_explore_secure".tr,
                            maxLines: null,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtPoppinsSemiBold32WhiteA701
                                .copyWith(height: 1.41),
                          ),
                        ),
                      ),
                      ElevatedButton(
                        child: Text('continue'.toUpperCase()),
                        onPressed: () {
                          onTapStartPage();
                        },
                        style: ElevatedButton.styleFrom(
                            primary: Colors.white,
                            onPrimary: Colour(0, 100, 254),
                            padding: EdgeInsets.symmetric(
                                horizontal: 85, vertical: 7.5),
                            textStyle: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 20,
                            )),
                      ),
                      Container(
                          height: getVerticalSize(10.00),
                          margin: getMargin(bottom: 20),
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
                                  dotWidth: getHorizontalSize(5.00))))
                    ])))));
  }

  onTapImgArrowleft() {
    Get.back();
  }

  onTapStartPage() {
    Get.toNamed(AppRoutes.startScreen);
  }
}
