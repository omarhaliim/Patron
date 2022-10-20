import 'controller/sign_in_verfiy_your_mobile_controller.dart';
import 'package:flutter/material.dart';
import 'package:omar_s_application2/core/app_export.dart';
import 'package:omar_s_application2/widgets/custom_button.dart';
import 'package:colour/colour.dart';
import 'package:omar_s_application2/presentation/sign_in_enter_pin_screen/sign_in_enter_pin_screen.dart';
import 'package:omar_s_application2/presentation/sign_in_enter_otp_screen/sign_in_enter_otp_screen.dart';

class SignInVerfiyYourMobileScreen
    extends GetWidget<SignInVerfiyYourMobileController> {
  const SignInVerfiyYourMobileScreen({super.key, required this.phone});

  final String phone;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray100,
            body: Column(
                //mainAxisSize: MainAxisSize.min,
                //crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(left: 25, top: 65, right: 25),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    GestureDetector(
                                        onTap: () {
                                          onTapImgArrowleft(context);
                                        },
                                        child: CommonImageView(
                                            svgPath: ImageConstant.imgArrowleft,
                                            height: getVerticalSize(14.00),
                                            width: getHorizontalSize(16.00))),
                                    Expanded(
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: const [
                                          SizedBox(
                                            width: 175,
                                            child: LinearProgressIndicator(
                                              backgroundColor:
                                                  Color(0xffabc9f8),
                                              minHeight: 4,
                                              value: 0.6,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ]))),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                            padding: getPadding(left: 35, top: 55, right: 35),
                            child: Text("msg_verfiy_your_mob".tr,
                                overflow: TextOverflow.ellipsis,
                                //textAlign: TextAlign.left,
                                style: AppStyle.txtPoppinsMedium16Black900
                                    .copyWith(height: 1.00))),
                      ),
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
                    ],
                  ),
                  Container(
                    margin: getMargin(bottom: 100),
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: ElevatedButton(
                            child: Text("lbl_send_sms".tr.toUpperCase()),
                            onPressed: () {
                              onTapBtnSendsms(context);
                            },
                            style: ElevatedButton.styleFrom(
                                primary: Colour(0, 100, 254),
                                padding: EdgeInsets.symmetric(
                                    horizontal: 85, vertical: 7.5),
                                textStyle: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 20,
                                )),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: ElevatedButton(
                            child: Text("lbl_back2".tr.toUpperCase()),
                            onPressed: () {
                              onTapImgArrowleft(context);
                            },
                            style: ElevatedButton.styleFrom(
                                primary: Colors.white,
                                onPrimary: Colour(0, 100, 254),
                                padding: EdgeInsets.symmetric(
                                    horizontal: 107.5, vertical: 7.5),
                                textStyle: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 20,
                                )),
                          ),
                        ),
                      ],
                    ),
                  ),
                ])));
  }

  onTapImgArrowleft(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => SignInEnterPinScreen(phone: phone),
      ),
    );
  }

  onTapBtnSendsms(BuildContext context) {
    //Get.toNamed(AppRoutes.signInEnterOtpScreen);

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => SignInEnterOtpScreen(phone: phone),
      ),
    );
  }
}
