import 'package:flutter/widgets.dart';

import 'controller/sign_in_enter_pin_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:omar_s_application2/core/app_export.dart';
import 'package:omar_s_application2/widgets/custom_button.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:colour/colour.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:omar_s_application2/db/db_provider.dart';
import 'package:omar_s_application2/db/user.dart';
import 'package:omar_s_application2/presentation/sign_in_verfiy_your_mobile_screen/sign_in_verfiy_your_mobile_screen.dart';

class SignInEnterPinScreen extends GetWidget<SignInEnterPinController> {
  const SignInEnterPinScreen({super.key, required this.phone});

  final String phone;

  static TextEditingController myControllerPin = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray100,
            body: Container(
              height: double.infinity,
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Container(
                  child: Column(
                      mainAxisSize: MainAxisSize.max,
                      //mainAxisSize: MainAxisSize.min,
                      //crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                    padding: getPadding(
                                        left: 25, top: 65, right: 25),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          GestureDetector(
                                              onTap: () {
                                                onTapImgArrowleft();
                                              },
                                              child: CommonImageView(
                                                  svgPath: ImageConstant
                                                      .imgArrowleft,
                                                  height:
                                                      getVerticalSize(14.00),
                                                  width: getHorizontalSize(
                                                      16.00))),
                                          Expanded(
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: const [
                                                SizedBox(
                                                  width: 175,
                                                  child:
                                                      LinearProgressIndicator(
                                                    backgroundColor:
                                                        Color(0xffabc9f8),
                                                    minHeight: 4,
                                                    value: 0.4,
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                        ]))),
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                    padding: getPadding(
                                        left: 35, top: 54, right: 35),
                                    child: Text("lbl_enter_pin_code".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtPoppinsMedium16Black900
                                            .copyWith(height: 1.00)))),
                            Align(
                                alignment: Alignment.center,
                                child: Container(
                                    width: double.infinity,
                                    margin:
                                        getMargin(left: 25, top: 36, right: 25),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                            getHorizontalSize(4.00))),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Padding(
                                              padding: getPadding(right: 10),
                                              child: Text(
                                                  'Enter 6-Digit PIN Code',
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtPoppinsMedium16Gray9007f
                                                      .copyWith(height: 1.00))),
                                          Container(
                                            margin: getMargin(top: 10),
                                            child: PinCodeTextField(
                                              pinTheme: PinTheme(
                                                shape: PinCodeFieldShape.box,
                                                inactiveColor: Colors.black26,
                                                activeColor: Colors.black26,
                                                selectedColor: Colors.black26,
                                                fieldHeight: 60,
                                                fieldWidth: 50,
                                              ),
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              appContext: context,
                                              length: 6,
                                              boxShadows: [],
                                              onChanged: (String value) {
                                                print(myControllerPin.text);
                                              },
                                              controller: myControllerPin,
                                            ),
                                          ),
                                        ]))),
                            Align(
                                alignment: Alignment.center,
                                child: GestureDetector(
                                    onTap: () {
                                      onTapTxtForgotpincode();
                                    },
                                    child: Padding(
                                        padding: getPadding(
                                            left: 25, top: 33, right: 25),
                                        child: Text("msg_forgot_pin_code".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtPoppinsMedium16BlueA7004c
                                                .copyWith(height: 1.00))))),
                          ],
                        ),
                        Container(
                          margin: getMargin(bottom: 100, top: 100),
                          child: ElevatedButton(
                            child: Text('continue'.toUpperCase()),
                            onPressed: () async {
                              if (validPin(myControllerPin.text.toString())) {
                                if (await isCorrectPin(
                                    phone, myControllerPin.text.toString()))
                                  onTapContinue(context);
                                else
                                  Alert(
                                          type: AlertType.error,
                                          context: context,
                                          title: "Wrong PIN Code.")
                                      .show();
                              } else
                                Alert(
                                        type: AlertType.error,
                                        context: context,
                                        title: "Incomplete PIN Code.")
                                    .show();
                            },
                            style: ElevatedButton.styleFrom(
                                primary: Colour(0, 100, 254),
                                padding: EdgeInsets.symmetric(
                                    horizontal: 45, vertical: 7.5),
                                textStyle: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 20,
                                )),
                          ),
                        ),
                      ]),
                ),
              ),
            )));
  }

  onTapImgArrowleft() {
    Get.toNamed(AppRoutes.signInScreen);
  }

  onTapContinue(BuildContext context) {
    // Get.toNamed(AppRoutes.signInVerfiyYourMobileScreen);
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => SignInVerfiyYourMobileScreen(phone: phone),
      ),
    );
  }

  onTapTxtForgotpincode() {
    //Get.toNamed(AppRoutes.signInVerfiyYourMobileScreen);
  }

  bool validPin(String PIN) {
    if (PIN.length < 6)
      return false;
    else
      return true;
  }

  Future<bool> isCorrectPin(String phone, String password) async {
    List list = await DatabaseProvider.db.getUser(phone);

    if ((list[0] as User).password == password)
      return true;
    else
      return false;
  }
}
