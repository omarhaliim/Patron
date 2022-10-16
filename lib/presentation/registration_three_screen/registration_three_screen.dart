import 'controller/registration_three_controller.dart';
import 'package:flutter/material.dart';
import 'package:omar_s_application2/core/app_export.dart';
import 'package:omar_s_application2/widgets/custom_button.dart';

class RegistrationThreeScreen extends GetWidget<RegistrationThreeController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.blueA700,
        body: Container(
          width: size.width,
          child: SingleChildScrollView(
            child: Container(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: getPadding(
                      left: 16,
                      top: 17,
                      right: 16,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: getPadding(
                            bottom: 1,
                          ),
                          child: Text(
                            "lbl_registration".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtPoppinsMedium16.copyWith(
                              height: 1.00,
                            ),
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 105,
                          ),
                          child: CommonImageView(
                            svgPath: ImageConstant.imgQuestion,
                            height: getSize(
                              20.00,
                            ),
                            width: getSize(
                              20.00,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      width: double.infinity,
                      margin: getMargin(
                        left: 14,
                        top: 93,
                        right: 14,
                        bottom: 20,
                      ),
                      decoration: AppDecoration.fillWhiteA700.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder25,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            width: getHorizontalSize(
                              217.00,
                            ),
                            margin: getMargin(
                              left: 23,
                              top: 34,
                              right: 23,
                            ),
                            child: Text(
                              "msg_prepare_your_id".tr,
                              maxLines: null,
                              textAlign: TextAlign.center,
                              style:
                                  AppStyle.txtPoppinsSemiBold24Gray900.copyWith(
                                height: 1.08,
                              ),
                            ),
                          ),
                          Container(
                            width: getHorizontalSize(
                              301.00,
                            ),
                            margin: getMargin(
                              left: 23,
                              top: 25,
                              right: 23,
                            ),
                            child: Text(
                              "msg_we_need_you_to".tr,
                              maxLines: null,
                              textAlign: TextAlign.center,
                              style:
                                  AppStyle.txtPoppinsRegular16Gray700.copyWith(
                                height: 1.38,
                              ),
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 23,
                              top: 51,
                              right: 23,
                            ),
                            child: CommonImageView(
                              svgPath: ImageConstant.imgScaniconbox,
                              height: getSize(
                                200.00,
                              ),
                              width: getSize(
                                200.00,
                              ),
                            ),
                          ),
                          CustomButton(
                            width: 240,
                            text: "lbl_scan".tr.toUpperCase(),
                            onTap: onTapBtnScan,
                            margin: getMargin(
                              left: 23,
                              top: 61,
                              right: 23,
                              bottom: 20,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
  onTapBtnScan() {
    Get.toNamed(AppRoutes.registrationFourScreen);
  }
}
