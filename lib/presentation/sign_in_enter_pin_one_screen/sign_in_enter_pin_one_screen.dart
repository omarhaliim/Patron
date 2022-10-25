import '../verfiy_your_mobile_screen/verfiy_your_mobile_screen.dart';
import 'controller/sign_in_enter_pin_one_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:omar_s_application2/core/app_export.dart';
import 'package:omar_s_application2/widgets/custom_button.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:colour/colour.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:omar_s_application2/db/db_provider.dart';
import 'package:omar_s_application2/db/user.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SignInEnterPinOneScreen extends GetWidget<SignInEnterPinOneController> {
  static TextEditingController myControllerPin = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.gray100,
        body: Container(
          width: size.width,
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Container(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                          margin: getMargin(left: 25, top: 36, right: 25),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                  getHorizontalSize(4.00))),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                    padding: getPadding(right: 10),
                                    child: Text('Enter 6-Digit PIN Code',
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtPoppinsMedium16Gray9007f
                                            .copyWith(height: 1.00))),
                                Container(
                                  margin: getMargin(top: 10),
                                  child: PinCodeTextField(
                                    obscureText: true,
                                    keyboardType: TextInputType.number,
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
                                    onChanged: (String value) {},
                                    controller: myControllerPin,
                                  ),
                                ),
                              ]))),
                  Align(
                      alignment: Alignment.center,
                      child: GestureDetector(
                          onTap: () async {
                            SharedPreferences pref =
                                await SharedPreferences.getInstance();

                            String phone = pref.getString("number").toString();

                            List list =
                                await DatabaseProvider.db.getUser(phone);

                            User user = (list[0] as User);

                            myControllerPin.clear();

                            onTapTxtForgotpincode(context, user.name, phone);
                          },
                          child: Padding(
                              padding: getPadding(left: 25, top: 33, right: 25),
                              child: Text("msg_forgot_pin_code".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtPoppinsMedium16BlueA7004c
                                      .copyWith(height: 1.00))))),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      margin: getMargin(top: 100, bottom: 100),
                      child: ElevatedButton(
                        child: Text('login'.toUpperCase()),
                        onPressed: () async {
                          //await onTapContinue(context);

                          if (isValidPin(myControllerPin.text.toString())) {
                            SharedPreferences pref =
                                await SharedPreferences.getInstance();
                            if (await isCorrectPin(pref.getString("number"),
                                myControllerPin.text.toString())) {
                              myControllerPin.clear();
                              onTapBtnContinue();
                            } else
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
                                horizontal: 102.5, vertical: 7.5),
                            textStyle: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 20,
                            )),
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

  onTapTxtForgotpincode(BuildContext context, String firstName, String phone) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) =>
            VerfiyYourMobileScreen(firstName, "", "", phone, "Reset"),
      ),
    );
  }

  onTapBtnContinue() {
    Get.toNamed(AppRoutes.homeScreen);
  }

  onTapBtnForgetPin() {
    Get.toNamed(AppRoutes.createPinCodeScreen);
  }

  bool isValidPin(String PIN) {
    if (PIN.length < 6)
      return false;
    else
      return true;
  }

  Future<bool> isCorrectPin(String? phone, String password) async {
    List list = await DatabaseProvider.db.getUser(phone!);

    if ((list[0] as User).password == password)
      return true;
    else
      return false;
  }
}
