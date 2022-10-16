import 'controller/successful_account_controller.dart';
import 'package:flutter/material.dart';
import 'package:omar_s_application2/core/app_export.dart';
import 'package:omar_s_application2/widgets/custom_button.dart';

class SuccessfulAccountScreen extends GetWidget<SuccessfulAccountController> {
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
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
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
                                        padding: getPadding(
                                            left: 64, top: 5, bottom: 5),
                                        child: ClipRRect(
                                            borderRadius: BorderRadius.circular(
                                                getHorizontalSize(2.00)),
                                            child: CommonImageView(
                                                svgPath: ImageConstant
                                                    .imgProgressbar,
                                                height: getVerticalSize(4.00),
                                                width:
                                                    getHorizontalSize(147.00))))
                                  ]))),
                      Container(
                          height: getSize(160.00),
                          width: getSize(160.00),
                          margin: getMargin(left: 34, top: 165, right: 34),
                          child: Card(
                              clipBehavior: Clip.antiAlias,
                              elevation: 0,
                              margin: EdgeInsets.all(0),
                              color: ColorConstant.blueA700,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                      getHorizontalSize(80.00))),
                              child: Stack(children: [
                                Align(
                                    alignment: Alignment.center,
                                    child: Padding(
                                        padding: getPadding(all: 40),
                                        child: CommonImageView(
                                            svgPath: ImageConstant
                                                .imgVectorWhiteA700,
                                            height: getVerticalSize(44.00),
                                            width: getHorizontalSize(64.00))))
                              ]))),
                      Padding(
                          padding: getPadding(left: 34, top: 38, right: 34),
                          child: Text("lbl_success".tr.toUpperCase(),
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsMedium24
                                  .copyWith(height: 1.00))),
                      CustomButton(
                        onTap: onTapBtnContinue,
                          width: 240,
                          text: "lbl_continue".tr.toUpperCase(),
                          margin: getMargin(
                              left: 34, top: 83, right: 34, bottom: 20))
                    ]))))));
  }

  onTapImgArrowleft() {
    Get.back();
  }
  onTapBtnContinue() {
    Get.toNamed(AppRoutes.signInEnterPinOneScreen);
  }
}
