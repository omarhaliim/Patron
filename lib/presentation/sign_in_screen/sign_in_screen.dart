import 'controller/sign_in_controller.dart';
import 'package:flutter/material.dart';
import 'package:omar_s_application2/core/app_export.dart';
import 'package:omar_s_application2/widgets/custom_button.dart';

class SignInScreen extends GetWidget<SignInController> {
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
                          padding: getPadding(left: 35, top: 55, right: 35),
                          child: Text("lbl_sign_in".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsMedium16Black900
                                  .copyWith(height: 1.00))),
                      Padding(
                          padding: getPadding(left: 34, top: 43, right: 34),
                          child: Text("lbl_mobile_number".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsMedium16Gray9007f
                                  .copyWith(height: 1.00))),
                      Align(
                          alignment: Alignment.center,
                          child: Container(
                              width: double.infinity,
                              margin: getMargin(left: 34, top: 4, right: 34),
                              decoration: AppDecoration.outlineGray90059
                                  .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.circleBorder2),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                        height: getVerticalSize(33.00),
                                        width: getHorizontalSize(296.00),
                                        margin: getMargin(all: 4),
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(
                                                getHorizontalSize(4.00))))
                                  ]))),
                      CustomButton(
                        width: 240,
                        text: "lbl_continue".tr.toUpperCase(),
                        margin: getMargin(
                            left: 34, top: 293, right: 34, bottom: 20),
                        alignment: Alignment.center,
                        onTap: onTapBtnContinue,
                      )
                    ]))))));
  }

  onTapImgArrowleft() {
    Get.toNamed(AppRoutes.startScreen);
  }

  onTapBtnContinue() {
    Get.toNamed(AppRoutes.signInVerfiyYourMobileScreen);
  }
}
