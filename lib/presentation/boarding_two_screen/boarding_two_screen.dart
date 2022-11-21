import 'controller/boarding_two_controller.dart';
import 'package:flutter/material.dart';
import 'package:omar_s_application2/core/app_export.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:colour/colour.dart';

class BoardingTwoScreen extends GetWidget<BoardingTwoController> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () async {
          Get.toNamed(AppRoutes.boardingOneScreen);
          return true;
        },
        child: SafeArea(
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
                                  margin:
                                      getMargin(left: 14, top: 56, right: 14),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Container(
                                          height: 50,
                                          width: 50,
                                          child: FloatingActionButton(
                                              heroTag: "btnBack",
                                              foregroundColor:
                                                  ColorConstant.gray100,
                                              backgroundColor:
                                                  Colour(0, 100, 254),
                                              onPressed: onTapImgArrowleft,
                                              child: Icon(
                                                Icons.arrow_back_outlined,
                                                size: 30,
                                              )),
                                        ),
                                        Text("lbl_what_s_new".tr,
                                            maxLines: null,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtPoppinsSemiBold32WhiteA701
                                                .copyWith(height: 1.41)),
                                        Container(
                                          height: 50,
                                          width: 50,
                                          child: FloatingActionButton(
                                              heroTag: "btnForward",
                                              foregroundColor:
                                                  ColorConstant.gray100,
                                              backgroundColor:
                                                  Colour(0, 100, 254),
                                              onPressed: onTapNext,
                                              child: Icon(
                                                Icons.arrow_forward_outlined,
                                                size: 30,
                                              )),
                                        )
                                      ]))),
                          Expanded(
                            child: Container(
                              margin: getMargin(
                                  top: 50, bottom: 50, left: 50, right: 50),
                              child: Align(
                                alignment: Alignment.center,
                                child: CommonImageView(
                                  imagePath: ImageConstant.imgPatronCard,
                                  // height: 282,
                                  // width: 300,
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                              margin: getMargin(left: 14, bottom: 50),
                              child: Text(
                                "msg_explore_secure".tr,
                                maxLines: null,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtPoppinsSemiBold32WhiteA701
                                    .copyWith(height: 1.41),
                              ),
                            ),
                          ),
                          Column(
                            children: [
                              ElevatedButton(
                                child: Text('get started'.toUpperCase()),
                                onPressed: () {
                                  onTapStartPage();
                                },
                                style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20.0),
                                    ),
                                    primary: Colors.white,
                                    onPrimary: Colour(0, 100, 254),
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 70, vertical: 7.5),
                                    textStyle: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 20,
                                    )),
                              ),
                              SizedBox(
                                height: 50,
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
                                                  ColorConstant.fromHex(
                                                      "#1212121D"),
                                              dotColor: ColorConstant.whiteA701,
                                              dotHeight: getVerticalSize(5.00),
                                              dotWidth:
                                                  getHorizontalSize(5.00)))))
                            ],
                          )
                        ]))))));
  }

  onTapStartPage() {
    Get.toNamed(AppRoutes.startScreen);
  }

  onTapImgArrowleft() {
    Get.back();
  }

  onTapTxtSkip() {
    Get.toNamed(AppRoutes.startScreen);
  }

  onTapNext() {
    Get.toNamed(AppRoutes.boardingThreeScreen);
  }
}
