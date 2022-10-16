import 'controller/registration_3_two_controller.dart';
import 'package:flutter/material.dart';
import 'package:omar_s_application2/core/app_export.dart';

class Registration3TwoScreen extends GetWidget<Registration3TwoController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.deepPurpleA700,
            body: Container(
                width: size.width,
                child: SingleChildScrollView(
                    child: Container(
                        height: getVerticalSize(773.00),
                        width: size.width,
                        child: Stack(
                            alignment: Alignment.centerLeft,
                            children: [
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: CommonImageView(
                                      imagePath: ImageConstant
                                          .imgPexelsfwstudio773X375,
                                      height: getVerticalSize(773.00),
                                      width: getHorizontalSize(375.00))),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Container(
                                      height: getVerticalSize(773.00),
                                      width: size.width,
                                      child: Stack(
                                          alignment: Alignment.topCenter,
                                          children: [
                                            Align(
                                                alignment: Alignment.centerLeft,
                                                child: CommonImageView(
                                                    svgPath: ImageConstant
                                                        .imgBackgroundblur,
                                                    height:
                                                        getVerticalSize(773.00),
                                                    width: getHorizontalSize(
                                                        375.00))),
                                            Align(
                                                alignment: Alignment.topCenter,
                                                child: Container(
                                                    margin: getMargin(
                                                        left: 14,
                                                        top: 17,
                                                        right: 14,
                                                        bottom: 17),
                                                    child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        children: [
                                                          Container(
                                                              width: size.width,
                                                              margin: getMargin(
                                                                  right: 2),
                                                              child: Row(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .spaceBetween,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .center,
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    GestureDetector(
                                                                        onTap:
                                                                            () {
                                                                          onTapImgArrowleft();
                                                                        },
                                                                        child: Padding(
                                                                            padding:
                                                                                getPadding(top: 2, bottom: 2),
                                                                            child: CommonImageView(svgPath: ImageConstant.imgArrowleftWhiteA701, height: getVerticalSize(15.00), width: getHorizontalSize(16.00)))),
                                                                    Padding(
                                                                        padding: getPadding(
                                                                            bottom:
                                                                                1),
                                                                        child: Text(
                                                                            "msg_scan_your_docum"
                                                                                .tr,
                                                                            overflow:
                                                                                TextOverflow.ellipsis,
                                                                            textAlign: TextAlign.left,
                                                                            style: AppStyle.txtPoppinsMedium16WhiteA701.copyWith(height: 1.00))),
                                                                    CommonImageView(
                                                                        svgPath:
                                                                            ImageConstant
                                                                                .imgQuestion,
                                                                        height: getSize(
                                                                            20.00),
                                                                        width: getSize(
                                                                            20.00))
                                                                  ])),
                                                          Container(
                                                              height:
                                                                  getVerticalSize(
                                                                      228.00),
                                                              width:
                                                                  getHorizontalSize(
                                                                      344.00),
                                                              margin: getMargin(
                                                                  left: 3,
                                                                  top: 218),
                                                              child: Card(
                                                                  clipBehavior: Clip
                                                                      .antiAlias,
                                                                  elevation: 0,
                                                                  margin:
                                                                      EdgeInsets
                                                                          .all(
                                                                              0),
                                                                  shape: RoundedRectangleBorder(
                                                                      side: BorderSide(
                                                                          color: ColorConstant
                                                                              .whiteA701,
                                                                          width: getHorizontalSize(
                                                                              5.00)),
                                                                      borderRadius:
                                                                          BorderRadius.circular(getHorizontalSize(
                                                                              25.00))),
                                                                  child: Stack(
                                                                      children: [
                                                                        Align(
                                                                            alignment:
                                                                                Alignment.center,
                                                                            child: Padding(padding: getPadding(left: 16, top: 12, right: 19, bottom: 16), child: CommonImageView(imagePath: ImageConstant.imgItidbackima, height: getVerticalSize(200.00), width: getHorizontalSize(309.00))))
                                                                      ])))
                                                        ])))
                                          ])))
                            ]))))));
  }

  onTapImgArrowleft() {
    Get.back();
  }
}
