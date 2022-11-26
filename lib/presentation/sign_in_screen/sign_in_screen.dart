import 'package:flutter/services.dart';

import 'controller/sign_in_controller.dart';
import 'package:flutter/material.dart';
import 'package:omar_s_application2/core/app_export.dart';
import 'package:colour/colour.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:omar_s_application2/db/db_provider.dart';
import 'package:omar_s_application2/presentation/sign_in_enter_pin_screen/sign_in_enter_pin_screen.dart';
import 'package:omar_s_application2/widgets/progress_bar.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final myControllerPhone = TextEditingController();

  late GlobalKey<FormFieldState> PhoneKey;
  late List<GlobalKey<FormFieldState>> fieldKeys;

  @override
  void initState() {
    super.initState();

    PhoneKey = GlobalKey<FormFieldState>();

    fieldKeys = [PhoneKey];
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        Get.toNamed(AppRoutes.startScreen);
        return true;
      },
      child: SafeArea(
          child: Scaffold(
              backgroundColor: ColorConstant.gray100,
              body: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ProgressBar(
                          progress_indicator: 0.2,
                          callback: onTapImgArrowleft,
                        ),
                        Padding(
                            padding: getPadding(left: 35, right: 35),
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
                        Container(
                            width: double.infinity,
                            margin: getMargin(left: 34, top: 3, right: 34),
                            decoration: AppDecoration.outlineGray90059.copyWith(
                                borderRadius: BorderRadiusStyle.circleBorder2),
                            child: TextFormField(
                              keyboardType: TextInputType.number,
                              controller: myControllerPhone,
                              autocorrect: false,
                              key: PhoneKey,
                              autovalidateMode:
                                  AutovalidateMode.onUserInteraction,
                              inputFormatters: [
                                LengthLimitingTextInputFormatter(11),
                              ],
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Phone number is required';
                                } else if (!isValidPhoneNumber(value)) {
                                  return 'Enter Valid Mobile Number';
                                } else {
                                  return null;
                                }
                              },
                              decoration: InputDecoration(
                                hintText: 'ex: 01xxxxxxxxx',
                                contentPadding: EdgeInsets.symmetric(
                                    vertical: 5, horizontal: 10),
                                border: OutlineInputBorder(),
                              ),
                            )),
                      ],
                    ),
                    Container(
                      margin: getMargin(bottom: 100),
                      child: ElevatedButton(
                        child: Text('continue'.toUpperCase()),
                        onPressed: () async {
                          onTapBtnContinue(
                              context, myControllerPhone.text.toString());
                        },
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
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
                  ]))),
    );
  }

  bool validate() {
    return fieldKeys.every((element) => element.currentState!.validate());
  }

  onTapImgArrowleft() {
    Get.toNamed(AppRoutes.startScreen);
  }

  onTapBtnContinue(BuildContext context, String phone) async {
    // Navigator.push(
    //   context,
    //   MaterialPageRoute(
    //     builder: (context) => SignInEnterPinScreen(phone: phone),
    //   ),
    // );
    if (validate()) {
      if (await isExistingUser(myControllerPhone.text.toString()))
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => SignInEnterPinScreen(phone),
          ),
        );
      else
        Alert(
          style: AlertStyle(
              titleStyle: AppStyle.alertStyle.copyWith(height: 1.00)),
          context: context,
          type: AlertType.error,
          title: "This mobile number is not registered. Sign up now?"
              .toUpperCase(),
          buttons: [
            DialogButton(
              child: Text(
                "SIGN UP",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              onPressed: () => onTapBtnSignUp(),
              color: Color.fromRGBO(0, 179, 134, 1.0),
            ),
            DialogButton(
              child: Text(
                "CANCEL",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              onPressed: () => Navigator.pop(context),
              gradient: LinearGradient(colors: [
                Color.fromRGBO(116, 116, 191, 1.0),
                Color.fromRGBO(52, 138, 199, 1.0)
              ]),
            )
          ],
        ).show();
    }
  }

  onTapBtnSignUp() {
    Get.toNamed(AppRoutes.createAnAccountScreen);
  }

  bool isValidPhoneNumber(String number) {
    if (number.length == 0) {
      return false;
    }
    if (number.length < 11 || number.length > 11) {
      return false;
    }
    if (number.length >= 3) {
      if ('${number[0]}' != '0') {
        return false;
      }
      if ('${number[1]}' != '1') {
        return false;
      }

      if ('${number[2]}' != '0' &&
          '${number[2]}' != '1' &&
          '${number[2]}' != '2' &&
          '${number[2]}' != '5') {
        return false;
      }
    }
    return true;
  }

  Future<bool> isExistingUser(String number) async {
    List list = await DatabaseProvider.db.getUser(number);

    if (list.length >= 1)
      return true;
    else
      return false;
  }
}
