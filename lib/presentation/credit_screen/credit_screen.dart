import 'controller/credit_controller.dart';
import 'package:flutter/material.dart';
import 'package:omar_s_application2/core/app_export.dart';
import 'package:omar_s_application2/widgets/custom_button.dart';

class CreditScreen extends GetWidget<CreditController> {
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
                                        margin: getMargin(left: 30, right: 25),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Align(
                                                  alignment:
                                                      Alignment.centerRight,
                                                  child: Padding(
                                                      padding:
                                                          getPadding(left: 10),
                                                      child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .end,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .center,
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          children: [
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        top: 2,
                                                                        bottom:
                                                                            2),
                                                                child: CommonImageView(
                                                                    svgPath:
                                                                        ImageConstant
                                                                            .imgMusic,
                                                                    height:
                                                                        getSize(
                                                                            20.00),
                                                                    width: getSize(
                                                                        20.00))),
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            19,
                                                                        top: 1,
                                                                        right:
                                                                            1,
                                                                        bottom:
                                                                            1),
                                                                child: CommonImageView(
                                                                    svgPath:
                                                                        ImageConstant
                                                                            .imgSettings,
                                                                    height:
                                                                        getSize(
                                                                            22.00),
                                                                    width: getSize(
                                                                        22.00)))
                                                          ]))),
                                              Align(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Padding(
                                                      padding: getPadding(
                                                          left: 6,
                                                          top: 15,
                                                          right: 10),
                                                      child: Text(
                                                          "lbl_credit_card".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtPoppinsMedium32
                                                              .copyWith(
                                                                  height:
                                                                      1.00)))),
                                              Align(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Padding(
                                                      padding: getPadding(
                                                          left: 6,
                                                          top: 6,
                                                          right: 10),
                                                      child: Text(
                                                          "msg_status_will_aut"
                                                              .tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtPoppinsRegular16Black9004c
                                                              .copyWith(
                                                                  height:
                                                                      1.00)))),
                                              Align(
                                                  alignment: Alignment.center,
                                                  child: Container(
                                                      height: getVerticalSize(
                                                          178.00),
                                                      width: getHorizontalSize(
                                                          280.00),
                                                      margin: getMargin(
                                                          left: 10,
                                                          top: 31,
                                                          right: 10),
                                                      decoration: AppDecoration
                                                          .outlineBlack9003f,
                                                      child: Stack(
                                                          alignment:
                                                              Alignment.center,
                                                          children: [
                                                            Align(
                                                                alignment: Alignment
                                                                    .centerLeft,
                                                                child: CommonImageView(
                                                                    svgPath:
                                                                        ImageConstant
                                                                            .imgGroup12715,
                                                                    height: getVerticalSize(
                                                                        178.00),
                                                                    width: getHorizontalSize(
                                                                        280.00))),
                                                            Align(
                                                                alignment:
                                                                    Alignment
                                                                        .center,
                                                                child:
                                                                    Container(
                                                                        margin: getMargin(
                                                                            left:
                                                                                18,
                                                                            top:
                                                                                20,
                                                                            right:
                                                                                17,
                                                                            bottom:
                                                                                24),
                                                                        child: Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.min,
                                                                            crossAxisAlignment: CrossAxisAlignment.start,
                                                                            mainAxisAlignment: MainAxisAlignment.start,
                                                                            children: [
                                                                              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.center, mainAxisSize: MainAxisSize.max, children: [
                                                                                Text("lbl_patron".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtPoppinsExtraBold20.copyWith()),
                                                                                Padding(padding: getPadding(top: 3, bottom: 2), child: Text("lbl_credit_card".tr.toUpperCase(), overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtPoppinsMedium14.copyWith(height: 1.00)))
                                                                              ]),
                                                                              Align(alignment: Alignment.centerRight, child: Padding(padding: getPadding(left: 219, top: 7, right: 1), child: CommonImageView(svgPath: ImageConstant.imgEye, height: getVerticalSize(14.00), width: getHorizontalSize(22.00)))),
                                                                              Container(
                                                                                  margin: getMargin(left: 1, top: 13, right: 10),
                                                                                  child: RichText(
                                                                                      text: TextSpan(children: [
                                                                                        TextSpan(text: "lbl_4588_0080_8819".tr, style: TextStyle(color: ColorConstant.whiteA700, fontSize: getFontSize(11), fontFamily: 'Poppins', fontWeight: FontWeight.w400, letterSpacing: 0.11)),
                                                                                        TextSpan(text: "lbl_9300".tr, style: TextStyle(color: ColorConstant.whiteA700, fontSize: getFontSize(11), fontFamily: 'Poppins', fontWeight: FontWeight.w400, letterSpacing: 0.11))
                                                                                      ]),
                                                                                      textAlign: TextAlign.left)),
                                                                              Padding(
                                                                                  padding: getPadding(left: 1, top: 2, right: 10),
                                                                                  child: Row(mainAxisAlignment: MainAxisAlignment.start, crossAxisAlignment: CrossAxisAlignment.start, mainAxisSize: MainAxisSize.min, children: [
                                                                                    Text("lbl_exp_08_28".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtPoppinsRegular10.copyWith(letterSpacing: 0.10)),
                                                                                    Padding(padding: getPadding(left: 22, top: 3, bottom: 1), child: Text("lbl_cvv_888".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtPoppinsRegular10.copyWith(letterSpacing: 0.10)))
                                                                                  ])),
                                                                              Padding(padding: getPadding(left: 1, top: 23, right: 10), child: Text("lbl_mohamed_shaker2".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtPoppinsRegular11.copyWith())),
                                                                              Padding(padding: getPadding(left: 1, top: 2, right: 10), child: Text("lbl_08_28".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtPoppinsRegular10.copyWith(letterSpacing: 0.10)))
                                                                            ])))
                                                          ]))),
                                              Align(
                                                  alignment: Alignment.center,
                                                  child: Padding(
                                                      padding: getPadding(
                                                          left: 10,
                                                          top: 28,
                                                          right: 10),
                                                      child: ClipRRect(
                                                          borderRadius:
                                                              BorderRadius.circular(
                                                                  getHorizontalSize(
                                                                      2.00)),
                                                          child: CommonImageView(
                                                              svgPath: ImageConstant
                                                                  .imgSwitchbarcr,
                                                              height:
                                                                  getVerticalSize(
                                                                      4.00),
                                                              width:
                                                                  getHorizontalSize(
                                                                      63.00))))),
                                              Align(
                                                  alignment: Alignment.center,
                                                  child: Padding(
                                                      padding: getPadding(
                                                          top: 28, right: 7),
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
                                                            Container(
                                                                margin:
                                                                    getMargin(
                                                                        top: 12,
                                                                        bottom:
                                                                            1),
                                                                child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .min,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .start,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      Align(
                                                                          alignment: Alignment
                                                                              .center,
                                                                          child: Padding(
                                                                              padding: getPadding(right: 1),
                                                                              child: Text("msg_available_credi".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtPoppinsRegular14.copyWith(letterSpacing: 2.80, height: 1.00)))),
                                                                      Padding(
                                                                          padding: getPadding(
                                                                              top:
                                                                                  17,
                                                                              right:
                                                                                  10),
                                                                          child: Text(
                                                                              "lbl_egp_56_000".tr,
                                                                              overflow: TextOverflow.ellipsis,
                                                                              textAlign: TextAlign.left,
                                                                              style: AppStyle.txtPoppinsSemiBold22.copyWith(height: 1.00))),
                                                                      Padding(
                                                                          padding: getPadding(
                                                                              top:
                                                                                  1),
                                                                          child: ClipRRect(
                                                                              borderRadius: BorderRadius.circular(getHorizontalSize(2.00)),
                                                                              child: CommonImageView(svgPath: ImageConstant.imgProgressbar, height: getVerticalSize(4.00), width: getHorizontalSize(164.00)))),
                                                                      Container(
                                                                          width: getHorizontalSize(
                                                                              164.00),
                                                                          margin: getMargin(
                                                                              top:
                                                                                  5,
                                                                              bottom:
                                                                                  2),
                                                                          child: Row(
                                                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                              crossAxisAlignment: CrossAxisAlignment.center,
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              children: [
                                                                                Padding(padding: getPadding(bottom: 1), child: Text("lbl_limit".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtPoppinsRegular10Black900.copyWith(height: 1.00))),
                                                                                Padding(padding: getPadding(top: 1), child: Text("lbl_egp_80_000".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtPoppinsRegular10Black900.copyWith(height: 1.00)))
                                                                              ]))
                                                                    ])),
                                                            Container(
                                                                margin:
                                                                    getMargin(
                                                                        top:
                                                                            11),
                                                                child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .min,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .start,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      Align(
                                                                          alignment: Alignment
                                                                              .center,
                                                                          child: Padding(
                                                                              padding: getPadding(top: 1, right: 1),
                                                                              child: Text("lbl_amount_due".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtPoppinsRegular14.copyWith(letterSpacing: 2.80, height: 1.00)))),
                                                                      Padding(
                                                                          padding: getPadding(
                                                                              top:
                                                                                  1,
                                                                              right:
                                                                                  10),
                                                                          child: Text(
                                                                              "lbl_egp_1_800".tr,
                                                                              overflow: TextOverflow.ellipsis,
                                                                              textAlign: TextAlign.left,
                                                                              style: AppStyle.txtPoppinsSemiBold18.copyWith(height: 1.00))),
                                                                      CustomButton(
                                                                          width:
                                                                              115,
                                                                          text: "lbl_pay"
                                                                              .tr
                                                                              .toUpperCase(),
                                                                          margin: getMargin(
                                                                              top:
                                                                                  5),
                                                                          onTap:
                                                                              onTapBtnPay)
                                                                    ]))
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

  onTapBtnPay() {
    // Get.toNamed(AppRoutes.addCardScreen);
  }
}
