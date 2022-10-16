import 'controller/university_pay_later_controller.dart';
import 'package:flutter/material.dart';
import 'package:omar_s_application2/core/app_export.dart';

class UniversityPayLaterScreen extends GetWidget<UniversityPayLaterController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray100,
            body: Column(children: [
              Expanded(
                  child: Container(
                      width: size.width,
                      child: SingleChildScrollView(
                          child: Container(
                              margin: getMargin(top: 35, right: 2),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Container(
                                        margin: getMargin(left: 24, right: 24),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Container(
                                                  width: size.width,
                                                  child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        GestureDetector(
                                                            onTap: () {
                                                              onTapImgArrowleft();
                                                            },
                                                            child: Padding(
                                                                padding:
                                                                    getPadding(
                                                                        top: 1,
                                                                        bottom:
                                                                            8),
                                                                child: CommonImageView(
                                                                    svgPath:
                                                                        ImageConstant
                                                                            .imgArrowleft,
                                                                    height:
                                                                        getVerticalSize(
                                                                            14.00),
                                                                    width: getHorizontalSize(
                                                                        16.00)))),
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 1,
                                                                right: 1,
                                                                bottom: 1),
                                                            child: Row(
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .center,
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .min,
                                                                children: [
                                                                  Padding(
                                                                      padding: getPadding(
                                                                          top:
                                                                              1,
                                                                          bottom:
                                                                              1),
                                                                      child: CommonImageView(
                                                                          svgPath: ImageConstant
                                                                              .imgMusic,
                                                                          height: getSize(
                                                                              20.00),
                                                                          width:
                                                                              getSize(20.00))),
                                                                  Padding(
                                                                      padding: getPadding(
                                                                          left:
                                                                              19),
                                                                      child: CommonImageView(
                                                                          svgPath: ImageConstant
                                                                              .imgSettings,
                                                                          height: getSize(
                                                                              22.00),
                                                                          width:
                                                                              getSize(22.00)))
                                                                ]))
                                                      ])),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 1,
                                                      top: 13,
                                                      right: 10),
                                                  child: Text(
                                                      "lbl_pay_later".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtPoppinsMedium32Black900
                                                          .copyWith(
                                                              height: 1.00))),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 1,
                                                      top: 2,
                                                      right: 10),
                                                  child: Text(
                                                      "lbl_select_program".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtPoppinsMedium16Gray600
                                                          .copyWith(
                                                              height: 1.00))),
                                              Align(
                                                  alignment: Alignment.center,
                                                  child: Padding(
                                                      padding: getPadding(
                                                          left: 12,
                                                          top: 65,
                                                          right: 9),
                                                      child: Column(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .center,
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Padding(
                                                              padding: const EdgeInsets.all(20),
                                                              child: Container(
                                                                  decoration:
                                                                      AppDecoration
                                                                          .fillWhiteA700,
                                                                  child: Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .min,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .start,
                                                                      children: [
                                                                        Align(
                                                                            alignment: Alignment
                                                                                .centerLeft,
                                                                            child: Padding(
                                                                                padding: getPadding(left: 26, top: 15, right: 26),
                                                                                child: CommonImageView(svgPath: ImageConstant.imgArrowdown33X33, height: getSize(33.00), width: getSize(33.00)))),
                                                                        Align(
                                                                            alignment: Alignment
                                                                                .centerLeft,
                                                                            child: Padding(
                                                                                padding: getPadding(left: 8, top: 30, right: 10, bottom: 35),
                                                                                child: Text("msg_5_equal_install".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtPoppinsRegular20.copyWith(height: 1.00))))
                                                                      ])),
                                                            ),
                                                            Padding(
                                                              padding: const EdgeInsets.all(20),
                                                              child: Container(
                                                                  decoration:
                                                                      AppDecoration
                                                                          .fillBlueA700,
                                                                  child: Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .min,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .start,
                                                                      children: [
                                                                        Align(
                                                                            alignment: Alignment
                                                                                .centerLeft,
                                                                            child: Padding(
                                                                                padding: getPadding(left: 26, top: 14, right: 26),
                                                                                child: CommonImageView(svgPath: ImageConstant.imgArrowdown1, height: getSize(33.00), width: getSize(33.00)))),
                                                                        Align(
                                                                            alignment: Alignment
                                                                                .centerLeft,
                                                                            child: Padding(
                                                                                padding: getPadding(left: 8, top: 31, right: 10, bottom: 20),
                                                                                child: Text("msg_12_equal_instal".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtPoppinsRegular20WhiteA700.copyWith(height: 1.00))))
                                                                      ])),
                                                            )
                                                          ])))
                                            ]))
                                  ]))))),
              Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(getHorizontalSize(20.00)),
                          topRight: Radius.circular(getHorizontalSize(20.00)))),
                  child: Padding(
                      padding: getPadding(top: 27, bottom: 27),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            GestureDetector(
                              onTap: () { onTapHomeScreen(); },
                              child: Padding(
                                  padding: getPadding(top: 2, bottom: 2),
                                  child: CommonImageView(
                                      svgPath: ImageConstant.imgHome,
                                      height: getVerticalSize(26.00),
                                      width: getHorizontalSize(24.00))),
                            ),
                            Padding(
                                padding: getPadding(top: 1, bottom: 1),
                                child: CommonImageView(
                                    svgPath: ImageConstant.imgRefresh,
                                    height: getVerticalSize(29.00),
                                    width: getHorizontalSize(24.00))),
                            Padding(
                                padding: getPadding(top: 5, bottom: 5),
                                child: CommonImageView(
                                    svgPath: ImageConstant.imgSave,
                                    height: getVerticalSize(21.00),
                                    width: getHorizontalSize(29.00)))
                          ])))
            ])));
  }

  onTapImgArrowleft() {
    Get.back();
  }
  onTapHomeScreen() {
    Get.toNamed(AppRoutes.homeScreen);
  }
}
