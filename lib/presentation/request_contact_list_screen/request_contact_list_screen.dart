import '../request_contact_list_screen/widgets/listuser_eight_item_widget.dart';
import '../request_contact_list_screen/widgets/listuser_item_widget.dart';
import 'controller/request_contact_list_controller.dart';
import 'models/listuser_eight_item_model.dart';
import 'models/listuser_item_model.dart';
import 'package:flutter/material.dart';
import 'package:omar_s_application2/core/app_export.dart';
import 'package:omar_s_application2/core/utils/validation_functions.dart';
import 'package:omar_s_application2/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class RequestContactListScreen extends GetWidget<RequestContactListController> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray100,
            body: Column(children: [
              Expanded(
                  child: Form(
                      key: _formKey,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      child: Container(
                          margin: getMargin(top: 27, right: 2),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Container(
                                    width: size.width,
                                    margin: getMargin(left: 24, right: 24),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          GestureDetector(
                                              onTap: () {
                                                onTapImgArrowleft();
                                              },
                                              child: Padding(
                                                  padding: getPadding(
                                                      top: 9, bottom: 8),
                                                  child: CommonImageView(
                                                      svgPath: ImageConstant
                                                          .imgArrowleft,
                                                      height: getVerticalSize(
                                                          14.00),
                                                      width: getHorizontalSize(
                                                          16.00)))),
                                          Container(
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          getHorizontalSize(
                                                              16.00))),
                                              child: Row(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Padding(
                                                        padding: getPadding(
                                                            top: 7, bottom: 8),
                                                        child: Text(
                                                            "msg_available_balan"
                                                                .tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtPoppinsMedium16Black900
                                                                .copyWith(
                                                                    height:
                                                                        1.00))),
                                                    Padding(
                                                        padding: getPadding(
                                                            left: 13,
                                                            top: 8,
                                                            right: 1,
                                                            bottom: 8),
                                                        child: CommonImageView(
                                                            svgPath:
                                                                ImageConstant
                                                                    .imgLock,
                                                            height:
                                                                getVerticalSize(
                                                                    16.00),
                                                            width:
                                                                getHorizontalSize(
                                                                    29.00)))
                                                  ]))
                                        ])),
                                Expanded(
                                    child: Align(
                                        alignment: Alignment.center,
                                        child: SingleChildScrollView(
                                            padding: getPadding(
                                                left: 24, top: 20, right: 24),
                                            child: Container(
                                                child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                  Align(
                                                      alignment:
                                                          Alignment.centerLeft,
                                                      child: Row(
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
                                                                padding:
                                                                    getPadding(
                                                                        top: 7,
                                                                        bottom:
                                                                            10),
                                                                child: Text(
                                                                    "lbl_to".tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtPoppinsMedium12
                                                                        .copyWith(
                                                                            height:
                                                                                1.00))),
                                                            CustomTextFormField(
                                                                width: 288,
                                                                focusNode:
                                                                    FocusNode(),
                                                                controller:
                                                                    controller
                                                                        .groupTwoController,
                                                                hintText:
                                                                    "lbl_username2"
                                                                        .tr,
                                                                variant:
                                                                    TextFormFieldVariant
                                                                        .FillBluegray100,
                                                                padding:
                                                                    TextFormFieldPadding
                                                                        .PaddingTB9,
                                                                fontStyle:
                                                                    TextFormFieldFontStyle
                                                                        .PoppinsMedium12,
                                                                validator:
                                                                    (value) {
                                                                  if (!isText(
                                                                      value)) {
                                                                    return "Please enter valid text";
                                                                  }
                                                                  return null;
                                                                })
                                                          ])),
                                                  Align(
                                                      alignment:
                                                          Alignment.centerLeft,
                                                      child: Padding(
                                                          padding: getPadding(
                                                              top: 10),
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
                                                                Padding(
                                                                    padding: getPadding(
                                                                        top: 8,
                                                                        bottom:
                                                                            9),
                                                                    child: Text(
                                                                        "lbl_for"
                                                                            .tr,
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .left,
                                                                        style: AppStyle
                                                                            .txtPoppinsMedium12
                                                                            .copyWith(height: 1.00))),
                                                                CustomTextFormField(
                                                                    width: 288,
                                                                    focusNode:
                                                                        FocusNode(),
                                                                    controller:
                                                                        controller
                                                                            .groupThreeController,
                                                                    hintText:
                                                                        "msg_rent_dinner_s"
                                                                            .tr,
                                                                    variant: TextFormFieldVariant
                                                                        .FillBluegray100,
                                                                    padding:
                                                                        TextFormFieldPadding
                                                                            .PaddingT9,
                                                                    fontStyle:
                                                                        TextFormFieldFontStyle
                                                                            .PoppinsMedium12,
                                                                    textInputAction:
                                                                        TextInputAction
                                                                            .done)
                                                              ]))),
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 8,
                                                          top: 33,
                                                          right: 10),
                                                      child: Obx(() =>
                                                          ListView.builder(
                                                              physics:
                                                                  NeverScrollableScrollPhysics(),
                                                              shrinkWrap: true,
                                                              itemCount: controller
                                                                  .requestContactListModelObj
                                                                  .value
                                                                  .listuserItemList
                                                                  .length,
                                                              itemBuilder:
                                                                  (context,
                                                                      index) {
                                                                ListuserItemModel
                                                                    model =
                                                                    controller
                                                                        .requestContactListModelObj
                                                                        .value
                                                                        .listuserItemList[index];
                                                                return ListuserItemWidget(
                                                                    model,
                                                                    onTapContactBox:
                                                                        onTapContactBox);
                                                              }))),
                                                  Align(
                                                      alignment:
                                                          Alignment.centerLeft,
                                                      child: Container(
                                                          width:
                                                              getHorizontalSize(
                                                                  48.00),
                                                          margin: getMargin(
                                                              left: 8,
                                                              top: 20,
                                                              right: 258),
                                                          decoration: BoxDecoration(
                                                              borderRadius:
                                                                  BorderRadius.circular(
                                                                      getHorizontalSize(
                                                                          16.00))),
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
                                                                Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .centerLeft,
                                                                    child: GestureDetector(
                                                                        onTap: () {
                                                                          onTapUserSeven();
                                                                        },
                                                                        child: Container(height: getSize(48.00), width: getSize(48.00), decoration: BoxDecoration(color: ColorConstant.bluegray100, borderRadius: BorderRadius.circular(getHorizontalSize(16.00))))))
                                                              ]))),
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 8,
                                                          top: 20,
                                                          right: 10),
                                                      child: Obx(() =>
                                                          ListView.builder(
                                                              physics:
                                                                  NeverScrollableScrollPhysics(),
                                                              shrinkWrap: true,
                                                              itemCount: controller
                                                                  .requestContactListModelObj
                                                                  .value
                                                                  .listuserEightItemList
                                                                  .length,
                                                              itemBuilder:
                                                                  (context,
                                                                      index) {
                                                                ListuserEightItemModel
                                                                    model =
                                                                    controller
                                                                        .requestContactListModelObj
                                                                        .value
                                                                        .listuserEightItemList[index];
                                                                return ListuserEightItemWidget(
                                                                    model,
                                                                    onTapContactBox:
                                                                        onTapContactBox);
                                                              })))
                                                ])))))
                              ])))),
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

  onTapContactBox() {
    Get.toNamed(AppRoutes.requestConfirmationScreen);
    Get.toNamed(AppRoutes.requestConfirmationScreen);
  }

  onTapImgArrowleft() {
    Get.back();
  }

  onTapUserSeven() {
    Get.toNamed(AppRoutes.requestConfirmationScreen);
  }
}
