import 'controller/school_fees_controller.dart';
import 'package:flutter/material.dart';
import 'package:omar_s_application2/core/app_export.dart';

class SchoolFeesScreen extends GetWidget<SchoolFeesController> {
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
                                                      top: 7,
                                                      right: 10),
                                                  child: Text(
                                                      "lbl_tution_fees".tr,
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
                                                      top: 5,
                                                      right: 10),
                                                  child: Text(
                                                      "lbl_select_school".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtPoppinsMedium16Gray600
                                                          .copyWith(
                                                              height: 1.00))),
                                              Align(
                                                  alignment: Alignment.center,
                                                  child: GestureDetector(
                                                      onTap: () {
                                                        onTapSchoolorUnive();
                                                      },
                                                      child: Container(
                                                          margin: getMargin(
                                                              top: 33,
                                                              right: 2),
                                                          decoration: AppDecoration
                                                              .outlineBlack9003f12
                                                              .copyWith(
                                                                  borderRadius:
                                                                      BorderRadiusStyle
                                                                          .roundedBorder16),
                                                          child: Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .start,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .center,
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Padding(
                                                                    padding: getPadding(
                                                                        left:
                                                                            13,
                                                                        top: 4,
                                                                        bottom:
                                                                            4),
                                                                    child: ClipRRect(
                                                                        borderRadius:
                                                                            BorderRadius.circular(getHorizontalSize(
                                                                                16.00)),
                                                                        child: CommonImageView(
                                                                            imagePath:
                                                                                ImageConstant.imgRectangle66671,
                                                                            height: getSize(88.00),
                                                                            width: getSize(88.00)))),
                                                                Container(
                                                                    width: getHorizontalSize(
                                                                        147.00),
                                                                    margin: getMargin(
                                                                        left: 7,
                                                                        top: 29,
                                                                        bottom:
                                                                            25),
                                                                    child: Text(
                                                                        "msg_modern_schools"
                                                                            .tr,
                                                                        maxLines:
                                                                            null,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .left,
                                                                        style: AppStyle
                                                                            .txtPoppinsMedium16Black900
                                                                            .copyWith(height: 1.50)))
                                                              ])))),
                                              Align(
                                                  alignment: Alignment.center,
                                                  child: GestureDetector(
                                                      onTap: () {
                                                        onTapSchoolorUnive1();
                                                      },
                                                      child: Container(
                                                          margin: getMargin(
                                                              top: 14,
                                                              right: 2),
                                                          decoration: AppDecoration
                                                              .outlineBlack9003f12
                                                              .copyWith(
                                                                  borderRadius:
                                                                      BorderRadiusStyle
                                                                          .roundedBorder16),
                                                          child: Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .start,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .center,
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Padding(
                                                                    padding: getPadding(
                                                                        left:
                                                                            13,
                                                                        top: 4,
                                                                        bottom:
                                                                            4),
                                                                    child: ClipRRect(
                                                                        borderRadius:
                                                                            BorderRadius.circular(getHorizontalSize(
                                                                                16.00)),
                                                                        child: CommonImageView(
                                                                            imagePath:
                                                                                ImageConstant.imgRectangle6667188X88,
                                                                            height: getSize(88.00),
                                                                            width: getSize(88.00)))),
                                                                Container(
                                                                    width: getHorizontalSize(
                                                                        143.00),
                                                                    margin: getMargin(
                                                                        left: 7,
                                                                        top: 29,
                                                                        bottom:
                                                                            25),
                                                                    child: Text(
                                                                        "msg_modern_american"
                                                                            .tr,
                                                                        maxLines:
                                                                            null,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .left,
                                                                        style: AppStyle
                                                                            .txtPoppinsMedium16Black900
                                                                            .copyWith(height: 1.50)))
                                                              ]))))
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

  onTapSchoolorUnive() {
    Get.toNamed(AppRoutes.schoolPayLaterScreen);
  }

  onTapSchoolorUnive1() {
    Get.toNamed(AppRoutes.schoolPayLaterScreen);
  }
  onTapHomeScreen() {
    Get.toNamed(AppRoutes.homeScreen);
  }
}
