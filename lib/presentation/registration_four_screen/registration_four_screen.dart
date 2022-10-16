import '../registration_four_screen/widgets/listemailaddress_item_widget.dart';
import 'controller/registration_four_controller.dart';
import 'models/listemailaddress_item_model.dart';
import 'package:flutter/material.dart';
import 'package:omar_s_application2/core/app_export.dart';
import 'package:omar_s_application2/core/utils/validation_functions.dart';
import 'package:omar_s_application2/widgets/custom_button.dart';
import 'package:omar_s_application2/widgets/custom_icon_button.dart';
import 'package:omar_s_application2/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class RegistrationFourScreen extends GetWidget<RegistrationFourController> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.blueA700,
            body: Form(
                key: _formKey,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                child: Container(
                    margin: getMargin(left: 14, top: 15, right: 14),
                    child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                              width: size.width,
                              margin: getMargin(left: 6, right: 7),
                              child: Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    GestureDetector(
                                        onTap: () {
                                          onTapArrowleft1();
                                        },
                                        child: Padding(
                                            padding:
                                            getPadding(top: 2, bottom: 2),
                                            child: CommonImageView(
                                                svgPath: ImageConstant
                                                    .imgArrowleftWhiteA701,
                                                height: getVerticalSize(15.00),
                                                width:
                                                getHorizontalSize(16.00)))),
                                    Padding(
                                        padding: getPadding(bottom: 2),
                                        child: Text("msg_scan_your_docum".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtPoppinsMedium16
                                                .copyWith(height: 1.00))),
                                    Padding(
                                        padding: getPadding(top: 1),
                                        child: CommonImageView(
                                            svgPath: ImageConstant.imgQuestion,
                                            height: getSize(20.00),
                                            width: getSize(20.00)))
                                  ])),
                          Expanded(
                              child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: SingleChildScrollView(
                                      padding: getPadding(top: 16),
                                      child: Container(
                                          child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                              MainAxisAlignment.start,
                                              children: [
                                                Container(
                                                    width: double.infinity,
                                                    decoration: AppDecoration
                                                        .fillWhiteA700
                                                        .copyWith(
                                                        borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder16),
                                                    child: Column(
                                                        mainAxisSize:
                                                        MainAxisSize.min,
                                                        crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                        mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                        children: [
                                                          Padding(
                                                              padding: getPadding(
                                                                  left: 24,
                                                                  top: 33,
                                                                  right: 24),
                                                              child: Text(
                                                                  "msg_confirm_your_da"
                                                                      .tr,
                                                                  overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                                  textAlign:
                                                                  TextAlign
                                                                      .left,
                                                                  style: AppStyle
                                                                      .txtPoppinsMedium22
                                                                      .copyWith(
                                                                      height:
                                                                      1.00))),
                                                          Container(
                                                              width:
                                                              getHorizontalSize(
                                                                  290.00),
                                                              margin: getMargin(
                                                                  left: 24,
                                                                  top: 19,
                                                                  right: 24),
                                                              child: Text(
                                                                  "msg_please_verify_a"
                                                                      .tr,
                                                                  maxLines: null,
                                                                  textAlign:
                                                                  TextAlign
                                                                      .center,
                                                                  style: AppStyle
                                                                      .txtPoppinsRegular16
                                                                      .copyWith(
                                                                      height:
                                                                      1.00))),
                                                          Padding(
                                                              padding: getPadding(
                                                                  left: 24,
                                                                  top: 22,
                                                                  right: 22,
                                                                  bottom: 22),
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
                                                                    Container(
                                                                        child: Column(
                                                                            mainAxisSize:
                                                                            MainAxisSize
                                                                                .min,
                                                                            crossAxisAlignment:
                                                                            CrossAxisAlignment
                                                                                .center,
                                                                            mainAxisAlignment:
                                                                            MainAxisAlignment.start,
                                                                            children: [
                                                                              Align(
                                                                                  alignment: Alignment
                                                                                      .centerLeft,
                                                                                  child: ClipRRect(
                                                                                      borderRadius: BorderRadius.circular(getHorizontalSize(25.00)),
                                                                                      child: CommonImageView(imagePath: ImageConstant.imgItidfrontim, height: getSize(132.00), width: getSize(132.00)))),
                                                                              Padding(
                                                                                  padding: getPadding(
                                                                                      left:
                                                                                      13,
                                                                                      top:
                                                                                      13,
                                                                                      right:
                                                                                      11),
                                                                                  child: Text(
                                                                                      "lbl_document_scan_1".tr,
                                                                                      overflow: TextOverflow.ellipsis,
                                                                                      textAlign: TextAlign.left,
                                                                                      style: AppStyle.txtMontserratSemiBold12.copyWith()))
                                                                            ])),
                                                                    Container(
                                                                        child: Column(
                                                                            mainAxisSize:
                                                                            MainAxisSize
                                                                                .min,
                                                                            crossAxisAlignment:
                                                                            CrossAxisAlignment
                                                                                .center,
                                                                            mainAxisAlignment:
                                                                            MainAxisAlignment.start,
                                                                            children: [
                                                                              Align(
                                                                                  alignment: Alignment
                                                                                      .centerLeft,
                                                                                  child: ClipRRect(
                                                                                      borderRadius: BorderRadius.circular(getHorizontalSize(25.00)),
                                                                                      child: CommonImageView(imagePath: ImageConstant.imgItidbackima132X132, height: getSize(132.00), width: getSize(132.00)))),
                                                                              Padding(
                                                                                  padding: getPadding(
                                                                                      left:
                                                                                      12,
                                                                                      top:
                                                                                      13,
                                                                                      right:
                                                                                      10),
                                                                                  child: Text(
                                                                                      "lbl_document_scan_2".tr,
                                                                                      overflow: TextOverflow.ellipsis,
                                                                                      textAlign: TextAlign.left,
                                                                                      style: AppStyle.txtMontserratSemiBold12.copyWith()))
                                                                            ]))
                                                                  ]))
                                                        ])),
                                                Container(
                                                      //contains a single child which is scrollable
                                                      height: getVerticalSize(300.00),
                                                      width:
                                                      getHorizontalSize(347.00),
                                                      margin: getMargin(top: 16),
                                                    decoration: BoxDecoration(
                                                      color: ColorConstant.whiteA700,
                                                      borderRadius: BorderRadius.circular(
                                                        getHorizontalSize(
                                                          16.00,
                                                        ),
                                                      ),
                                                    ),

                                                    child: SingleChildScrollView(
                                                      scrollDirection: Axis.vertical,
                                                        child: Stack(
                                                            alignment: Alignment.center,
                                                            children: [
                                                              Align(
                                                                  alignment:
                                                                  Alignment.topLeft,
                                                                  child: Container(
                                                                      height:
                                                                      getVerticalSize(
                                                                          349.00),
                                                                      width:
                                                                      getHorizontalSize(
                                                                          347.00),
                                                                      margin: getMargin(
                                                                          bottom: 10),
                                                                      decoration: BoxDecoration(
                                                                          color: ColorConstant
                                                                              .whiteA700,
                                                                          borderRadius:
                                                                          BorderRadius
                                                                              .circular(
                                                                              getHorizontalSize(16.00))))),
                                                              Align(
                                                                  alignment:
                                                                  Alignment.center,
                                                                  child: Container(
                                                                      margin: getMargin(
                                                                          left: 23,
                                                                          top: 22,
                                                                          right: 22),
                                                                      child: Column(
                                                                          mainAxisSize:
                                                                          MainAxisSize
                                                                              .min,
                                                                          crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .center,
                                                                          mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .start,
                                                                          children: [
                                                                            Padding(
                                                                                padding: getPadding(
                                                                                    left:
                                                                                    31,
                                                                                    right:
                                                                                    31),
                                                                                child: Text(
                                                                                    "msg_personal_inform"
                                                                                        .tr,
                                                                                    overflow:
                                                                                    TextOverflow.ellipsis,
                                                                                    textAlign: TextAlign.left,
                                                                                    style: AppStyle.txtPoppinsMedium22.copyWith(height: 1.00))),
                                                                            Align(
                                                                                alignment:
                                                                                Alignment
                                                                                    .centerLeft,
                                                                                child: Padding(
                                                                                    padding:
                                                                                    getPadding(top: 31, right: 10),
                                                                                    child: Text("lbl_phone_number".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtMontserratSemiBold12.copyWith()))),
                                                                            CustomTextFormField(
                                                                                width:
                                                                                302,
                                                                                focusNode:
                                                                                FocusNode(),
                                                                                controller:
                                                                                controller
                                                                                    .groupNineteenController,
                                                                                hintText:
                                                                                "msg_2_0100_000_000"
                                                                                    .tr,
                                                                                margin: getMargin(
                                                                                    top:
                                                                                    9),
                                                                                padding:
                                                                                TextFormFieldPadding
                                                                                    .PaddingTB15,
                                                                                fontStyle:
                                                                                TextFormFieldFontStyle
                                                                                    .PoppinsMedium16,
                                                                                alignment:
                                                                                Alignment
                                                                                    .centerLeft,
                                                                                prefix: Container(
                                                                                    padding: getPadding(
                                                                                        left: 10,
                                                                                        top: 8,
                                                                                        right: 10,
                                                                                        bottom: 7),
                                                                                    margin: getMargin(right: 14, bottom: 11),
                                                                                    decoration: BoxDecoration(color: ColorConstant.blueA700, borderRadius: BorderRadius.circular(getHorizontalSize(5.00))),
                                                                                    child: CommonImageView(svgPath: ImageConstant.imgComputer)),
                                                                                prefixConstraints: BoxConstraints(minWidth: getSize(14.00), minHeight: getSize(14.00))),
                                                                            Align(
                                                                                alignment:
                                                                                Alignment.centerLeft,
                                                                                child: Padding(
                                                                                    padding: getPadding(top: 26, right: 10),
                                                                                    child: Obx(() => ListView.separated(
                                                                                        physics: NeverScrollableScrollPhysics(),
                                                                                        shrinkWrap: true,
                                                                                        separatorBuilder: (context, index) {
                                                                                          return Container(height: getVerticalSize(1.00), width: getHorizontalSize(302.00), decoration: BoxDecoration(color: ColorConstant.gray900));
                                                                                        },
                                                                                        itemCount: controller.registrationFourModelObj.value.listemailaddressItemList.length,
                                                                                        itemBuilder: (context, index) {
                                                                                          ListemailaddressItemModel model = controller.registrationFourModelObj.value.listemailaddressItemList[index];
                                                                                          return ListemailaddressItemWidget(model);
                                                                                        })))),
                                                                            Container(
                                                                                height: getVerticalSize(
                                                                                    1.00),
                                                                                width: getHorizontalSize(
                                                                                    302.00),
                                                                                margin: getMargin(
                                                                                    top:
                                                                                    10),
                                                                                decoration:
                                                                                BoxDecoration(color: ColorConstant.gray900)),
                                                                            CustomTextFormField(
                                                                                width:
                                                                                302,
                                                                                focusNode:
                                                                                FocusNode(),
                                                                                controller:
                                                                                controller
                                                                                    .languageController,
                                                                                hintText:
                                                                                "lbl_last_name"
                                                                                    .tr,
                                                                                margin: getMargin(
                                                                                    top:
                                                                                    51),
                                                                                alignment:
                                                                                Alignment
                                                                                    .centerLeft,
                                                                                prefix: Container(
                                                                                    padding:
                                                                                    getPadding(all: 8),
                                                                                    margin: getMargin(right: 14, bottom: 11),
                                                                                    decoration: BoxDecoration(color: ColorConstant.blueA700, borderRadius: BorderRadius.circular(getHorizontalSize(5.00))),
                                                                                    child: CommonImageView(svgPath: ImageConstant.imgContrast30X30)),
                                                                                prefixConstraints: BoxConstraints(minWidth: getSize(14.00), minHeight: getSize(14.00)),
                                                                                validator: (value) {
                                                                                  if (!isText(
                                                                                      value)) {
                                                                                    return "Please enter valid text";
                                                                                  }
                                                                                  return null;
                                                                                }),
                                                                            Align(
                                                                                alignment:
                                                                                Alignment
                                                                                    .centerLeft,
                                                                                child: Padding(
                                                                                    padding:
                                                                                    getPadding(top: 26, right: 10),
                                                                                    child: Text("lbl_street_address".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtMontserratSemiBold12.copyWith()))),
                                                                            CustomTextFormField(
                                                                                width:
                                                                                302,
                                                                                focusNode:
                                                                                FocusNode(),
                                                                                controller:
                                                                                controller
                                                                                    .groupTwentyThreeController,
                                                                                hintText:
                                                                                "lbl_address"
                                                                                    .tr,
                                                                                margin: getMargin(
                                                                                    top:
                                                                                    10),
                                                                                alignment:
                                                                                Alignment
                                                                                    .centerLeft,
                                                                                prefix: Container(
                                                                                    padding: getPadding(
                                                                                        left: 9,
                                                                                        top: 8,
                                                                                        right: 9,
                                                                                        bottom: 6),
                                                                                    margin: getMargin(right: 14, bottom: 11),
                                                                                    decoration: BoxDecoration(color: ColorConstant.blueA700, borderRadius: BorderRadius.circular(getHorizontalSize(5.00))),
                                                                                    child: CommonImageView(svgPath: ImageConstant.imgLocation)),
                                                                                prefixConstraints: BoxConstraints(minWidth: getSize(15.00), minHeight: getSize(15.00))),
                                                                            Align(
                                                                                alignment:
                                                                                Alignment
                                                                                    .centerLeft,
                                                                                child: Padding(
                                                                                    padding:
                                                                                    getPadding(top: 26, right: 10),
                                                                                    child: Text("lbl_city".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtMontserratSemiBold12.copyWith()))),
                                                                            CustomTextFormField(
                                                                                width:
                                                                                302,
                                                                                focusNode:
                                                                                FocusNode(),
                                                                                controller:
                                                                                controller
                                                                                    .groupTwentyFiveController,
                                                                                hintText:
                                                                                "lbl_cairo"
                                                                                    .tr,
                                                                                margin: getMargin(
                                                                                    top:
                                                                                    10),
                                                                                alignment:
                                                                                Alignment
                                                                                    .centerLeft,
                                                                                prefix: Container(
                                                                                    padding: getPadding(
                                                                                        left: 7,
                                                                                        top: 7,
                                                                                        right: 7,
                                                                                        bottom: 9),
                                                                                    margin: getMargin(right: 14, bottom: 11),
                                                                                    decoration: BoxDecoration(color: ColorConstant.blueA700, borderRadius: BorderRadius.circular(getHorizontalSize(5.00))),
                                                                                    child: CommonImageView(svgPath: ImageConstant.imgPath41120)),
                                                                                prefixConstraints: BoxConstraints(minWidth: getSize(13.00), minHeight: getSize(13.00))),
                                                                            Align(
                                                                                alignment:
                                                                                Alignment
                                                                                    .centerLeft,
                                                                                child: Padding(
                                                                                    padding:
                                                                                    getPadding(top: 26, right: 10),
                                                                                    child: Text("msg_country_of_resi".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtMontserratSemiBold12.copyWith()))),
                                                                            CustomTextFormField(
                                                                                width:
                                                                                302,
                                                                                focusNode:
                                                                                FocusNode(),
                                                                                controller:
                                                                                controller
                                                                                    .countryController,
                                                                                hintText:
                                                                                "lbl_egypt"
                                                                                    .tr,
                                                                                margin: getMargin(
                                                                                    top:
                                                                                    10),
                                                                                alignment:
                                                                                Alignment
                                                                                    .centerLeft,
                                                                                prefix: Container(
                                                                                    padding:
                                                                                    getPadding(all: 8),
                                                                                    margin: getMargin(right: 14, bottom: 11),
                                                                                    decoration: BoxDecoration(color: ColorConstant.blueA700, borderRadius: BorderRadius.circular(getHorizontalSize(5.00))),
                                                                                    child: CommonImageView(svgPath: ImageConstant.imgGlobe)),
                                                                                prefixConstraints: BoxConstraints(minWidth: getSize(14.00), minHeight: getSize(14.00))),
                                                                            Align(
                                                                                alignment:
                                                                                Alignment
                                                                                    .centerLeft,
                                                                                child: Padding(
                                                                                    padding:
                                                                                    getPadding(top: 26, right: 10),
                                                                                    child: Text("lbl_date_of_birth".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtMontserratSemiBold12.copyWith()))),
                                                                            CustomTextFormField(
                                                                                width:
                                                                                302,
                                                                                focusNode:
                                                                                FocusNode(),
                                                                                controller:
                                                                                controller
                                                                                    .dateController,
                                                                                hintText:
                                                                                "lbl_08_08_1993"
                                                                                    .tr,
                                                                                margin: getMargin(
                                                                                    top:
                                                                                    10),
                                                                                alignment:
                                                                                Alignment
                                                                                    .centerLeft,
                                                                                prefix: Container(
                                                                                    padding: getPadding(
                                                                                        left: 8,
                                                                                        top: 7,
                                                                                        right: 8,
                                                                                        bottom: 8),
                                                                                    margin: getMargin(right: 14, bottom: 11),
                                                                                    decoration: BoxDecoration(color: ColorConstant.blueA700, borderRadius: BorderRadius.circular(getHorizontalSize(5.00))),
                                                                                    child: CommonImageView(svgPath: ImageConstant.imgTicket)),
                                                                                prefixConstraints: BoxConstraints(minWidth: getSize(15.00), minHeight: getSize(15.00))),
                                                                            Align(
                                                                                alignment:
                                                                                Alignment
                                                                                    .centerLeft,
                                                                                child: Padding(
                                                                                    padding:
                                                                                    getPadding(top: 26, right: 10),
                                                                                    child: Text("lbl_document_id".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtMontserratSemiBold12.copyWith()))),
                                                                            CustomTextFormField(
                                                                                width:
                                                                                302,
                                                                                focusNode:
                                                                                FocusNode(),
                                                                                controller:
                                                                                controller
                                                                                    .groupThirtyOneController,
                                                                                hintText:
                                                                                "lbl_29308082108008"
                                                                                    .tr,
                                                                                margin: getMargin(
                                                                                    top:
                                                                                    10),
                                                                                textInputAction:
                                                                                TextInputAction
                                                                                    .done,
                                                                                alignment:
                                                                                Alignment
                                                                                    .centerLeft,
                                                                                prefix: Container(
                                                                                    padding: getPadding(
                                                                                        left: 9,
                                                                                        top: 8,
                                                                                        right: 9,
                                                                                        bottom: 8),
                                                                                    margin: getMargin(right: 14, bottom: 11),
                                                                                    decoration: BoxDecoration(color: ColorConstant.blueA700, borderRadius: BorderRadius.circular(getHorizontalSize(5.00))),
                                                                                    child: CommonImageView(svgPath: ImageConstant.imgComputer14X12)),
                                                                                prefixConstraints: BoxConstraints(minWidth: getSize(14.00), minHeight: getSize(14.00))),
                                                                            Align(
                                                                                alignment:
                                                                                Alignment.centerLeft,
                                                                                child: Padding(
                                                                                    padding: getPadding(left: 3, top: 26, right: 10),
                                                                                    child: Row(mainAxisAlignment: MainAxisAlignment.start, crossAxisAlignment: CrossAxisAlignment.center, mainAxisSize: MainAxisSize.max, children: [
                                                                                      CustomIconButton(height: 20, width: 20, margin: getMargin(bottom: 1), padding: IconButtonPadding.PaddingAll4, child: CommonImageView(svgPath: ImageConstant.imgCheckmark)),
                                                                                      Container(
                                                                                          margin: getMargin(left: 25),
                                                                                          child: RichText(
                                                                                              text: TextSpan(children: [
                                                                                                TextSpan(text: "lbl_i_accept".tr, style: TextStyle(color: ColorConstant.gray900, fontSize: getFontSize(16), fontFamily: 'Poppins', fontWeight: FontWeight.w500, height: 1.50)),
                                                                                                TextSpan(text: "msg_terms_conditi".tr, style: TextStyle(color: ColorConstant.blueA700, fontSize: getFontSize(16), fontFamily: 'Poppins', fontWeight: FontWeight.w500, height: 1.50)),
                                                                                                TextSpan(text: "lbl".tr, style: TextStyle(color: ColorConstant.gray900, fontSize: getFontSize(16), fontFamily: 'Poppins', fontWeight: FontWeight.w500, height: 1.50))
                                                                                              ]),
                                                                                              textAlign: TextAlign.left))
                                                                                    ]))),
                                                                            CustomButton(
                                                                              onTap: onTapBtnContinue ,
                                                                                width:
                                                                                240,
                                                                                text: "lbl_continue"
                                                                                    .tr
                                                                                    .toUpperCase(),
                                                                                margin: getMargin(
                                                                                    left:
                                                                                    31,
                                                                                    top:
                                                                                    36,
                                                                                    bottom: 20,
                                                                                    right:
                                                                                    31))
                                                                          ])))
                                                            ])
                                                        )
                                                    )

                                              ])))))
                        ])))));
  }

  onTapArrowleft1() {
    Get.back();
  }
  onTapBtnContinue() {
    Get.toNamed(AppRoutes.createPinCodeScreen);
  }
}
