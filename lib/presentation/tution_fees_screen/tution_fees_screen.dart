import 'controller/tution_fees_controller.dart';
import 'package:flutter/material.dart';
import 'package:omar_s_application2/core/app_export.dart';

class TutionFeesScreen extends GetWidget<TutionFeesController> {
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
                                        margin: getMargin(left: 25, right: 25),
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
                                                          top: 7, right: 10),
                                                      child: Text(
                                                          "lbl_tution_fees".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtPoppinsMedium32Black900
                                                              .copyWith(
                                                                  height:
                                                                      1.00)))),
                                              Align(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Padding(
                                                      padding: getPadding(
                                                          top: 7, right: 10),
                                                      child: Text(
                                                          "lbl_select_category"
                                                              .tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtPoppinsMedium16Gray600
                                                              .copyWith(
                                                                  height:
                                                                      1.00)))),
                                              Align(
                                                  alignment: Alignment.center,
                                                  child: Padding(
                                                      padding: getPadding(
                                                          left: 10,
                                                          top: 65,
                                                          right: 9),
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
                                                            GestureDetector(
                                                                onTap: () {
                                                                  onTapTopupthrough();
                                                                },
                                                                child:
                                                                    Container(
                                                                        decoration:
                                                                            AppDecoration
                                                                                .fillWhiteA700,
                                                                        child: Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.min,
                                                                            mainAxisAlignment: MainAxisAlignment.start,
                                                                            children: [
                                                                              Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 17, top: 17, right: 17), child: CommonImageView(svgPath: ImageConstant.imgTrash, height: getVerticalSize(36.00), width: getHorizontalSize(40.00)))),
                                                                              Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 8, top: 33, right: 10, bottom: 42), child: Text("lbl_school".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtPoppinsRegular20.copyWith(height: 1.00))))
                                                                            ]))),
                                                            GestureDetector(
                                                                onTap: () {
                                                                  onTapTopupthrough1();
                                                                },
                                                                child:
                                                                    Container(
                                                                        decoration:
                                                                            AppDecoration
                                                                                .fillBlack900,
                                                                        child: Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.min,
                                                                            mainAxisAlignment: MainAxisAlignment.start,
                                                                            children: [
                                                                              Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 19, top: 15, right: 19), child: CommonImageView(svgPath: ImageConstant.imgTicket42X36, height: getVerticalSize(42.00), width: getHorizontalSize(36.00)))),
                                                                              Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 8, top: 29, right: 10, bottom: 20), child: Text("lbl_university".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtPoppinsRegular20WhiteA700.copyWith(height: 1.00))))
                                                                            ])))
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

  onTapTopupthrough() {
    Get.toNamed(AppRoutes.schoolFeesScreen);
  }

  onTapTopupthrough1() {
    Get.toNamed(AppRoutes.universityFeesScreen);
  }
  onTapHomeScreen() {
    Get.toNamed(AppRoutes.homeScreen);
  }
}
