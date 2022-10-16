import 'controller/sign_in_verfiy_your_mobile_controller.dart';
import 'package:flutter/material.dart';
import 'package:omar_s_application2/core/app_export.dart';
import 'package:omar_s_application2/widgets/custom_button.dart';

class SignInVerfiyYourMobileScreen
    extends GetWidget<SignInVerfiyYourMobileController> {
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
                          child: Text("msg_verfiy_your_mob".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsMedium16Black900
                                  .copyWith(height: 1.00))),
                      Align(
                          alignment: Alignment.center,
                          child: Container(
                              width: getHorizontalSize(293.00),
                              margin: getMargin(left: 34, top: 37, right: 34),
                              child: Text("msg_you_will_send_u".tr,
                                  maxLines: null,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtPoppinsMedium16Black9004c
                                      .copyWith(height: 1.50)))),
                      CustomButton(
                          width: 240,
                          text: "lbl_send_sms".tr.toUpperCase(),
                          margin: getMargin(left: 34, top: 252, right: 34),
                          variant: ButtonVariant.OutlineBlack9003f,
                          onTap: onTapBtnSendsms,
                          alignment: Alignment.center),
                      CustomButton(
                          width: 240,
                          text: "lbl_back2".tr.toUpperCase(),
                          margin: getMargin(
                              left: 34, top: 20, right: 34, bottom: 20),
                          variant: ButtonVariant.OutlineBlack9003f1_2,
                          fontStyle: ButtonFontStyle.PoppinsMedium16BlueA700,
                          alignment: Alignment.center,
                        onTap: onTapImgArrowleft,
                      )
                    ]))))));
  }

  onTapImgArrowleft() {
    Get.toNamed(AppRoutes.signInScreen);
  }

  onTapBtnSendsms() {
    Get.toNamed(AppRoutes.signInEnterPinScreen);
  }
}
