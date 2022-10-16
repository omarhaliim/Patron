import 'controller/sign_in_enter_pin_one_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:omar_s_application2/core/app_export.dart';
import 'package:omar_s_application2/widgets/custom_button.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class SignInEnterPinOneScreen extends GetWidget<SignInEnterPinOneController> {
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
                    padding: getPadding(
                      left: 35,
                      top: 134,
                      right: 35,
                    ),
                    child: Text(
                      "lbl_enter_pin_code".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtPoppinsMedium16Black900.copyWith(
                        height: 1.00,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      width: double.infinity,
                      margin: getMargin(
                        left: 35,
                        top: 36,
                        right: 35,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          getHorizontalSize(
                            4.00,
                          ),
                        ),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: getPadding(
                              right: 10,
                            ),
                            child: Text(
                              "msg_create_6_digit".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style:
                                  AppStyle.txtPoppinsMedium16Gray9007f.copyWith(
                                height: 1.00,
                              ),
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              top: 11,
                            ),
                            child: Container(
                              width: getHorizontalSize(
                                304.00,
                              ),
                              height: getVerticalSize(
                                56.00,
                              ),
                              child: Obx(
                                () => PinCodeTextField(
                                  appContext: context,
                                  controller: controller.otpController.value,
                                  length: 6,
                                  obscureText: false,
                                  obscuringCharacter: '*',
                                  keyboardType: TextInputType.number,
                                  autoDismissKeyboard: true,
                                  enableActiveFill: true,
                                  inputFormatters: [
                                    FilteringTextInputFormatter.digitsOnly,
                                  ],
                                  onChanged: (value) {},
                                  pinTheme: PinTheme(
                                    fieldHeight: getHorizontalSize(
                                      56.00,
                                    ),
                                    fieldWidth: getHorizontalSize(
                                      41.76,
                                    ),
                                    shape: PinCodeFieldShape.box,
                                    borderRadius: BorderRadius.circular(
                                      getHorizontalSize(
                                        4.00,
                                      ),
                                    ),
                                    selectedFillColor:
                                        ColorConstant.fromHex("#1212121D"),
                                    activeFillColor:
                                        ColorConstant.fromHex("#1212121D"),
                                    inactiveFillColor:
                                        ColorConstant.fromHex("#1212121D"),
                                    inactiveColor: ColorConstant.gray90059,
                                    selectedColor: ColorConstant.gray90059,
                                    activeColor: ColorConstant.gray90059,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Align(

                    alignment: Alignment.center,
                    child: Padding(
                      padding: getPadding(
                        left: 35,
                        top: 33,
                        right: 35,
                      ),
                      child: Text(
                        "msg_forgot_pin_code".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtPoppinsMedium16BlueA7004c.copyWith(
                          height: 1.00,
                        ),
                      ),

                    ),
                  ),
                  CustomButton(
                    onTap: onTapBtnContinue,
                    width: 240,
                    text: "lbl_continue".tr.toUpperCase(),
                    margin: getMargin(
                      left: 35,
                      top: 228,
                      right: 35,
                      bottom: 20,
                    ),
                    alignment: Alignment.center,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
  onTapBtnContinue() {
    Get.toNamed(AppRoutes.homeScreen);
  }
  onTapBtnForgetPin() {
    Get.toNamed(AppRoutes.createPinCodeScreen);
  }
}
