import 'controller/create_pin_code_controller.dart';
import 'package:flutter/material.dart';
import 'package:omar_s_application2/core/app_export.dart';
import 'package:omar_s_application2/widgets/custom_button.dart';
import 'package:omar_s_application2/widgets/custom_text_form_field.dart';

class CreatePinCodeScreen extends GetWidget<CreatePinCodeController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray100,

            body: Container(
                width: size.width,
                child: SingleChildScrollView(
                    child: Container(
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                      Padding(
                          padding: getPadding(left: 34, top: 65, right: 34),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                GestureDetector(
                                    onTap: () {
                                      onTapImgArrowleft();
                                    },
                                    child: CommonImageView(
                                        svgPath: ImageConstant.imgArrowleft,
                                        height: getVerticalSize(14.00),
                                        width: getHorizontalSize(16.00))),
                                Padding(
                                    padding:
                                        getPadding(left: 64, top: 5, bottom: 5),
                                    child: ClipRRect(
                                        borderRadius: BorderRadius.circular(
                                            getHorizontalSize(2.00)),
                                        child: CommonImageView(
                                            svgPath:
                                                ImageConstant.imgProgressbar,
                                            height: getVerticalSize(4.00),
                                            width: getHorizontalSize(147.00))))
                              ])),
                      Padding(
                          padding: getPadding(left: 35, top: 54, right: 35),
                          child: Text("lbl_create_pin_code".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsMedium16Black900
                                  .copyWith(height: 1.00))),
                      Align(
                          alignment: Alignment.center,
                          child: Container(
                              width: double.infinity,
                              margin: getMargin(left: 34, top: 36, right: 34),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(
                                      getHorizontalSize(4.00))),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Padding(
                                        padding: getPadding(right: 10),
                                        child: Text("msg_create_6_digit".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtPoppinsMedium16Gray9007f
                                                .copyWith(height: 1.00))),
                                    Padding(
                                        padding: getPadding(top: 11),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              CustomTextFormField(
                                                  width: 41,
                                                  focusNode: FocusNode(),
                                                  controller:
                                                      controller.oneController,
                                                  variant: TextFormFieldVariant
                                                      .OutlineGray90059),
                                              Container(
                                                  height:
                                                      getVerticalSize(56.00),
                                                  width:
                                                      getHorizontalSize(41.00),
                                                  decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              getHorizontalSize(
                                                                  4.00)),
                                                      border: Border.all(
                                                          color: ColorConstant
                                                              .gray90059,
                                                          width:
                                                              getHorizontalSize(
                                                                  1.00)))),
                                              Container(
                                                  height:
                                                      getVerticalSize(56.00),
                                                  width:
                                                      getHorizontalSize(41.00),
                                                  decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              getHorizontalSize(
                                                                  4.00)),
                                                      border: Border.all(
                                                          color: ColorConstant
                                                              .gray90059,
                                                          width:
                                                              getHorizontalSize(
                                                                  1.00)))),
                                              Container(
                                                  height:
                                                      getVerticalSize(56.00),
                                                  width:
                                                      getHorizontalSize(41.00),
                                                  decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              getHorizontalSize(
                                                                  4.00)),
                                                      border: Border.all(
                                                          color: ColorConstant
                                                              .gray90059,
                                                          width:
                                                              getHorizontalSize(
                                                                  1.00)))),
                                              Container(
                                                  height:
                                                      getVerticalSize(56.00),
                                                  width:
                                                      getHorizontalSize(41.00),
                                                  decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              getHorizontalSize(
                                                                  4.00)),
                                                      border: Border.all(
                                                          color: ColorConstant
                                                              .gray90059,
                                                          width:
                                                              getHorizontalSize(
                                                                  1.00)))),
                                              Container(
                                                  height:
                                                      getVerticalSize(56.00),
                                                  width:
                                                      getHorizontalSize(41.00),
                                                  decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              getHorizontalSize(
                                                                  4.00)),
                                                      border: Border.all(
                                                          color: ColorConstant
                                                              .gray90059,
                                                          width:
                                                              getHorizontalSize(
                                                                  1.00))))
                                            ]))
                                  ]))),
                      Align(
                          alignment: Alignment.center,
                          child: Container(
                              width: double.infinity,
                              margin: getMargin(left: 34, top: 19, right: 34),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(
                                      getHorizontalSize(4.00))),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Padding(
                                        padding: getPadding(right: 10),
                                        child: Text("msg_repeat_6_digit".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtPoppinsMedium16Gray9007f
                                                .copyWith(height: 1.00))),
                                    Padding(
                                        padding: getPadding(top: 11),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              CustomTextFormField(
                                                  width: 41,
                                                  focusNode: FocusNode(),
                                                  controller: controller
                                                      .sevenController,
                                                  variant: TextFormFieldVariant
                                                      .OutlineGray90059,
                                                  textInputAction:
                                                      TextInputAction.done),
                                              Container(
                                                  height:
                                                      getVerticalSize(56.00),
                                                  width:
                                                      getHorizontalSize(41.00),
                                                  decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              getHorizontalSize(
                                                                  4.00)),
                                                      border: Border.all(
                                                          color: ColorConstant
                                                              .gray90059,
                                                          width:
                                                              getHorizontalSize(
                                                                  1.00)))),
                                              Container(
                                                  height:
                                                      getVerticalSize(56.00),
                                                  width:
                                                      getHorizontalSize(41.00),
                                                  decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              getHorizontalSize(
                                                                  4.00)),
                                                      border: Border.all(
                                                          color: ColorConstant
                                                              .gray90059,
                                                          width:
                                                              getHorizontalSize(
                                                                  1.00)))),
                                              Container(
                                                  height:
                                                      getVerticalSize(56.00),
                                                  width:
                                                      getHorizontalSize(41.00),
                                                  decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              getHorizontalSize(
                                                                  4.00)),
                                                      border: Border.all(
                                                          color: ColorConstant
                                                              .gray90059,
                                                          width:
                                                              getHorizontalSize(
                                                                  1.00)))),
                                              Container(
                                                  height:
                                                      getVerticalSize(56.00),
                                                  width:
                                                      getHorizontalSize(41.00),
                                                  decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              getHorizontalSize(
                                                                  4.00)),
                                                      border: Border.all(
                                                          color: ColorConstant
                                                              .gray90059,
                                                          width:
                                                              getHorizontalSize(
                                                                  1.00)))),
                                              Container(
                                                  height:
                                                      getVerticalSize(56.00),
                                                  width:
                                                      getHorizontalSize(41.00),
                                                  decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              getHorizontalSize(
                                                                  4.00)),
                                                      border: Border.all(
                                                          color: ColorConstant
                                                              .gray90059,
                                                          width:
                                                              getHorizontalSize(
                                                                  1.00))))
                                            ]))
                                  ]))),
                      CustomButton(
                        onTap: onTapBtnContinue,
                          width: 240,
                          text: "lbl_continue".tr.toUpperCase(),
                          margin: getMargin(
                              left: 34, top: 173, right: 34, bottom: 20),
                          alignment: Alignment.center)
                    ]))))));
  }

  onTapImgArrowleft() {
    Get.back();
  }
  onTapBtnContinue() {
    Get.toNamed(AppRoutes.successfulAccountScreen);
  }
}
