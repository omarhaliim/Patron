import 'controller/start_controller.dart';
import 'package:flutter/material.dart';
import 'package:omar_s_application2/core/app_export.dart';
import 'package:omar_s_application2/widgets/custom_button.dart';

class StartScreen extends GetWidget<StartController> {
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
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                      Container(
                          width: getHorizontalSize(258.00),
                          margin: getMargin(left: 58, top: 203, right: 58),
                          child: Text("msg_start_by_creati".tr,
                              maxLines: null,
                              textAlign: TextAlign.center,
                              style: AppStyle.txtPoppinsSemiBold32Black900
                                  .copyWith(height: 1.41))),
                      CustomButton(
                          width: 240,
                          text: "lbl_create_account".tr.toUpperCase(),
                          margin: getMargin(left: 58, top: 277, right: 58),
                          variant: ButtonVariant.OutlineBlack9003f,
                          onTap: onTapBtnCreateaccount),
                      CustomButton(

                          width: 240,
                          text: "lbl_sign_in".tr.toUpperCase(),
                          margin: getMargin(
                              left: 58, top: 20, right: 58, bottom: 20),
                          variant: ButtonVariant.OutlineBlack9003f1_2,
                          fontStyle: ButtonFontStyle.PoppinsMedium16BlueA700,
                          onTap: onTapBtnSignInScreen)

                    ]))))));
  }

  onTapBtnCreateaccount() {
    Get.toNamed(AppRoutes.createAnAccountScreen);
  }
  onTapBtnSignInScreen() {
    Get.toNamed(AppRoutes.signInScreen);
  }
}
