import 'controller/registration_three_controller.dart';
import 'package:flutter/material.dart';
import 'package:omar_s_application2/core/app_export.dart';
import 'package:omar_s_application2/widgets/custom_button.dart';
import 'package:colour/colour.dart';

class RegistrationThreeScreen extends GetWidget<RegistrationThreeController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.blueA700,
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                Padding(
                  padding: getPadding(top: 50),
                  child: Text(
                    "Request a Patron Card".toUpperCase(),
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: getFontSize(
                        32,
                      ),
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                      height: 1.00,
                    ),
                  ),
                ),
                Container(
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
                    children: [
                      Container(
                        margin: getMargin(top: 40, left: 70, right: 70),
                        child: Text(
                          "msg_prepare_your_id".tr,
                          textAlign: TextAlign.center,
                          style: AppStyle.txtPoppinsSemiBold24Gray900.copyWith(
                            height: 1.08,
                          ),
                        ),
                      ),
                      Container(
                        margin: getMargin(
                          left: 25,
                          top: 25,
                          right: 25,
                        ),
                        child: Text(
                          "msg_we_need_you_to".tr,
                          maxLines: null,
                          textAlign: TextAlign.center,
                          style: AppStyle.txtPoppinsRegular16Gray700.copyWith(
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
                      Padding(
                        padding: const EdgeInsets.only(top: 50, bottom: 10),
                        child: ElevatedButton(
                          child: Text('continue'.toUpperCase()),
                          onPressed: () {
                            onTapBtnScan();
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colour(0, 100, 254),
                            padding: EdgeInsets.symmetric(
                                horizontal: 85, vertical: 7.5),
                            textStyle: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
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
