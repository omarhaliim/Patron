import 'controller/transfer_controller.dart';
import 'package:flutter/material.dart';
import 'package:omar_s_application2/core/app_export.dart';
import 'package:omar_s_application2/widgets/custom_button.dart';

class TransferScreen extends GetWidget<TransferController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.black900,
            body: Column(children: [
              Expanded(
                  child: Container(
                      width: size.width,
                      child: SingleChildScrollView(
                          child: Container(
                              margin: getMargin(top: 35),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Container(
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                          Align(
                                              alignment: Alignment.centerRight,
                                              child: Padding(
                                                  padding: getPadding(
                                                      left: 27, right: 27),
                                                  child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment.end,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      children: [
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 2,
                                                                bottom: 2),
                                                            child: CommonImageView(
                                                                svgPath:
                                                                    ImageConstant
                                                                        .imgCar,
                                                                height: getSize(
                                                                    20.00),
                                                                width: getSize(
                                                                    20.00))),
                                                        Padding(
                                                            padding: getPadding(
                                                                left: 19,
                                                                top: 1,
                                                                right: 1,
                                                                bottom: 1),
                                                            child: CommonImageView(
                                                                svgPath:
                                                                    ImageConstant
                                                                        .imgSettings22X22,
                                                                height: getSize(
                                                                    22.00),
                                                                width: getSize(
                                                                    22.00)))
                                                      ]))),
                                          Align(
                                              alignment: Alignment.centerLeft,
                                              child: Padding(
                                                  padding: getPadding(
                                                      left: 25,
                                                      top: 8,
                                                      right: 25),
                                                  child: Text("lbl_transfer".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtPoppinsMedium32WhiteA700
                                                          .copyWith(
                                                              height: 1.00)))),
                                          Align(
                                              alignment: Alignment.centerLeft,
                                              child: Container(
                                                  margin: getMargin(
                                                      left: 24,
                                                      top: 3,
                                                      right: 24),
                                                  decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              getHorizontalSize(
                                                                  16.00))),
                                                  child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      children: [
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 7,
                                                                bottom: 8),
                                                            child: Text(
                                                                "msg_available_balan"
                                                                    .tr,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtPoppinsMedium16
                                                                    .copyWith(
                                                                        height:
                                                                            1.00))),
                                                        Padding(
                                                            padding: getPadding(
                                                                left: 13,
                                                                top: 8,
                                                                bottom: 8),
                                                            child: CommonImageView(
                                                                svgPath:
                                                                    ImageConstant
                                                                        .imgVolume,
                                                                height:
                                                                    getVerticalSize(
                                                                        16.00),
                                                                width:
                                                                    getHorizontalSize(
                                                                        29.00)))
                                                      ]))),
                                          Align(
                                              alignment: Alignment.center,
                                              child: Padding(
                                                  padding: getPadding(
                                                      left: 24,
                                                      top: 69,
                                                      right: 24),
                                                  child: Text("lbl_egp".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtPoppinsSemiBold24WhiteA700
                                                          .copyWith(
                                                              height: 1.00)))),
                                          Align(
                                              alignment: Alignment.center,
                                              child: Padding(
                                                  padding: getPadding(
                                                      left: 24,
                                                      top: 10,
                                                      right: 24),
                                                  child: Text("lbl_50_000".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtPoppinsRegular32WhiteA700
                                                          .copyWith(
                                                              height: 1.00)))),
                                          Align(
                                              alignment: Alignment.centerLeft,
                                              child: Container(
                                                  height:
                                                      getVerticalSize(329.00),
                                                  width: size.width,
                                                  margin: getMargin(top: 67),
                                                  child: Stack(
                                                      alignment: Alignment
                                                          .bottomCenter,
                                                      children: [
                                                        Align(
                                                            alignment: Alignment
                                                                .centerLeft,
                                                            child: Padding(
                                                                padding:
                                                                    getPadding(
                                                                        bottom:
                                                                            1),
                                                                child: CommonImageView(
                                                                    imagePath:
                                                                        ImageConstant
                                                                            .imgImage13,
                                                                    height: getVerticalSize(
                                                                        328.00),
                                                                    width: getHorizontalSize(
                                                                        375.00)))),
                                                        Align(
                                                            alignment: Alignment
                                                                .bottomCenter,
                                                            child: Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            14,
                                                                        top: 10,
                                                                        right:
                                                                            14),
                                                                child: Row(
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .center,
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      CustomButton(
                                                                          width:
                                                                              160,
                                                                          text: "lbl_request"
                                                                              .tr
                                                                              .toUpperCase(),
                                                                          variant:
                                                                              ButtonVariant.OutlineWhiteA700),
                                                                      CustomButton(
                                                                          width:
                                                                              160,
                                                                          text: "lbl_send2"
                                                                              .tr
                                                                              .toUpperCase(),
                                                                          margin: getMargin(
                                                                              left:
                                                                                  24),
                                                                          variant: ButtonVariant
                                                                              .FillWhiteA700,
                                                                          fontStyle: ButtonFontStyle
                                                                              .PoppinsMedium16Black900,
                                                                          onTap:
                                                                              onTapBtnSend2)
                                                                    ])))
                                                      ])))
                                        ]))
                                  ]))))),
              Container(
                  decoration: BoxDecoration(
                      color: ColorConstant.black900,
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
                            Padding(
                                padding: getPadding(top: 2, bottom: 2),
                                child: CommonImageView(
                                    svgPath: ImageConstant.imgHome26X24,
                                    height: getVerticalSize(26.00),
                                    width: getHorizontalSize(24.00))),
                            Padding(
                                padding: getPadding(top: 1, bottom: 1),
                                child: CommonImageView(
                                    svgPath: ImageConstant.imgRefresh29X24,
                                    height: getVerticalSize(29.00),
                                    width: getHorizontalSize(24.00))),
                            Padding(
                                padding: getPadding(top: 5, bottom: 5),
                                child: CommonImageView(
                                    svgPath: ImageConstant.imgSave21X29,
                                    height: getVerticalSize(21.00),
                                    width: getHorizontalSize(29.00)))
                          ])))
            ])));
  }

  onTapBtnSend2() {
    Get.toNamed(AppRoutes.sendContactListScreen);
  }
}
