import 'controller/request_confirmation_controller.dart';
import 'package:flutter/material.dart';
import 'package:omar_s_application2/core/app_export.dart';
import 'package:omar_s_application2/widgets/custom_button.dart';

class RequestConfirmationScreen
    extends GetWidget<RequestConfirmationController> {
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
                              margin: getMargin(top: 36, right: 2),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: Container(
                                            margin:
                                                getMargin(left: 24, right: 24),
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Align(
                                                      alignment:
                                                          Alignment.centerLeft,
                                                      child: GestureDetector(
                                                          onTap: () {
                                                            onTapImgArrowleft();
                                                          },
                                                          child: Padding(
                                                              padding:
                                                                  getPadding(
                                                                      right:
                                                                          10),
                                                              child: CommonImageView(
                                                                  svgPath:
                                                                      ImageConstant
                                                                          .imgArrowleft,
                                                                  height:
                                                                      getVerticalSize(
                                                                          14.00),
                                                                  width: getHorizontalSize(
                                                                      16.00))))),
                                                  Align(
                                                      alignment:
                                                          Alignment.centerRight,
                                                      child: Padding(
                                                          padding: getPadding(
                                                              left: 57,
                                                              top: 65,
                                                              right: 57),
                                                          child: Text(
                                                              "lbl_request".tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtPoppinsSemiBold32
                                                                  .copyWith(
                                                                      height:
                                                                          1.00)))),
                                                  Align(
                                                      alignment:
                                                          Alignment.centerRight,
                                                      child: Padding(
                                                          padding: getPadding(
                                                              left: 98,
                                                              top: 43,
                                                              right: 98),
                                                          child: Text(
                                                              "lbl_egp".tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtPoppinsSemiBold24
                                                                  .copyWith(
                                                                      height:
                                                                          1.00)))),
                                                  Align(
                                                      alignment:
                                                          Alignment.centerRight,
                                                      child: Padding(
                                                          padding: getPadding(
                                                              left: 71,
                                                              top: 10,
                                                              right: 71),
                                                          child: Text(
                                                              "lbl_50_000".tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtPoppinsRegular32
                                                                  .copyWith(
                                                                      height:
                                                                          1.00)))),
                                                  Align(
                                                      alignment:
                                                          Alignment.centerRight,
                                                      child: Padding(
                                                          padding: getPadding(
                                                              left: 92,
                                                              top: 48,
                                                              right: 92),
                                                          child: CommonImageView(
                                                              svgPath:
                                                                  ImageConstant
                                                                      .imgArrowup,
                                                              height:
                                                                  getVerticalSize(
                                                                      60.00),
                                                              width:
                                                                  getHorizontalSize(
                                                                      54.00)))),
                                                  Align(
                                                      alignment:
                                                          Alignment.centerRight,
                                                      child: Container(
                                                          margin: getMargin(
                                                              left: 39,
                                                              top: 64,
                                                              right: 39),
                                                          decoration: BoxDecoration(
                                                              borderRadius:
                                                                  BorderRadius.circular(
                                                                      getHorizontalSize(
                                                                          16.00))),
                                                          child: Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .end,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .center,
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                ClipRRect(
                                                                    borderRadius:
                                                                        BorderRadius.circular(getHorizontalSize(
                                                                            16.00)),
                                                                    child: CommonImageView(
                                                                        svgPath:
                                                                            ImageConstant
                                                                                .imgUser,
                                                                        height: getSize(
                                                                            48.00),
                                                                        width: getSize(
                                                                            48.00))),
                                                                Container(
                                                                    width: getHorizontalSize(
                                                                        98.00),
                                                                    margin: getMargin(
                                                                        left:
                                                                            16,
                                                                        top: 12,
                                                                        bottom:
                                                                            9),
                                                                    child: RichText(
                                                                        text: TextSpan(children: [
                                                                          TextSpan(
                                                                              text: "lbl_contact_name".tr,
                                                                              style: TextStyle(color: ColorConstant.black900, fontSize: getFontSize(14), fontFamily: 'Poppins', fontWeight: FontWeight.w500, height: 1.00)),
                                                                          TextSpan(
                                                                              text: " ".tr,
                                                                              style: TextStyle(color: ColorConstant.black900, fontSize: getFontSize(12), fontFamily: 'Poppins', fontWeight: FontWeight.w500, height: 1.17)),
                                                                          TextSpan(
                                                                              text: "lbl_username".tr,
                                                                              style: TextStyle(color: ColorConstant.blueA700, fontSize: getFontSize(12), fontFamily: 'Poppins', fontWeight: FontWeight.w500, height: 1.17))
                                                                        ]),
                                                                        textAlign: TextAlign.left))
                                                              ]))),
                                                  CustomButton(
                                                      width: 240,
                                                      text: "lbl_confirm"
                                                          .tr
                                                          .toUpperCase(),
                                                      margin: getMargin(
                                                          left: 10, top: 73),
                                                      alignment:
                                                          Alignment.centerRight)
                                                ])))
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
                            Padding(
                                padding: getPadding(top: 2, bottom: 2),
                                child: CommonImageView(
                                    svgPath: ImageConstant.imgHome,
                                    height: getVerticalSize(26.00),
                                    width: getHorizontalSize(24.00))),
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
}
