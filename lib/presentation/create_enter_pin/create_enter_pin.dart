import 'dart:async';

import 'package:colour/colour.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import '../verfiy_your_mobile_screen/verfiy_your_mobile_screen.dart';
import 'controller/create_in_enter_pin_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:omar_s_application2/core/app_export.dart';
import 'package:omar_s_application2/widgets/custom_button.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:omar_s_application2/presentation/create_pin_code_screen/create_pin_code_screen.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:omar_s_application2/widgets/progress_bar.dart';

class create_enter_pin extends GetWidget<create_enter_pinController> {
  late final String FirstName;
  late final String LastName;
  late final String Phone;
  late final String Email;
  late final String Method;

  TextEditingController myControllerPin = TextEditingController();

  create_enter_pin(
      this.FirstName, this.LastName, this.Email, this.Phone, this.Method);
  TextEditingController textEditingController = TextEditingController();
  StreamController<ErrorAnimationType>? errorController;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => VerfiyYourMobileScreen(
                FirstName, LastName, Email, Phone, Method),
          ),
        );
        return true;
      },
      child: SafeArea(
          child: Scaffold(
              backgroundColor: ColorConstant.gray100,
              body: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          ProgressBar(
                            progress_indicator: 0.6,
                            callback: onTapImgArrowleft,
                          ),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding:
                                    getPadding(left: 35, right: 35, bottom: 40),
                                child: Text(
                                  "The verification code is sent to +2$Phone",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtPoppinsMedium16Black900
                                      .copyWith(height: 1.00),
                                ),
                              )),
                          Align(
                              alignment: Alignment.center,
                              child: Container(
                                  width: double.infinity,
                                  margin:
                                      getMargin(left: 25, top: 0, right: 25),
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
                                                'Enter 6-Digit OTP Code',
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtPoppinsMedium16Gray9007f
                                                    .copyWith(height: 1.00))),
                                        Container(
                                          margin: getMargin(top: 10),
                                          child: PinCodeTextField(
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
                        ],
                      ),
                      Container(
                        margin: getMargin(bottom: 100, top: 100),
                        child: Column(
                          children: [
                            Align(
                              alignment: Alignment.center,
                              child: ElevatedButton(
                                child: Text('verify'.toUpperCase()),
                                onPressed: () {
                                  if (isValidPin(
                                      myControllerPin.text.toString())) {
                                    //isCorrectPin(myControllerPin.text.toString());

                                    myControllerPin.clear();

                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            Create_Pin_Code_Screen(FirstName,
                                                LastName, Email, Phone, Method),
                                      ),
                                    );
                                  } else {
                                    Alert(
                                            type: AlertType.error,
                                            context: context,
                                            title: "Incomplete OTP Code.")
                                        .show();
                                  }
                                },
                                style: ElevatedButton.styleFrom(
                                    primary: Colour(0, 100, 254),
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 102.5, vertical: 7.5),
                                    textStyle: TextStyle(
                                        color: Colors.black,
                                        fontFamily: 'Poppins',
                                        fontSize: 20)),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: ElevatedButton(
                                child: Text('Resend SMS'.toUpperCase()),
                                onPressed: () {
                                  myControllerPin.clear();
                                  onTapImgArrowleft();
                                },
                                style: ElevatedButton.styleFrom(
                                    primary: Colour(255, 255, 255),
                                    onPrimary: Colour(0, 100, 254),
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 72.5, vertical: 7.5),
                                    textStyle: TextStyle(
                                        color: Colors.black,
                                        fontFamily: 'Poppins',
                                        fontSize: 20)),
                              ),
                            ),
                          ],
                        ),
                      )
                    ]),
              ))),
    );
  }

  onTapImgArrowleft() {
    Get.back();
  }

  onTapContinue() {
    Get.toNamed(AppRoutes.createPinCodeScreen);
  }

  bool isValidPin(String PIN) {
    if (PIN.length < 6)
      return false;
    else
      return true;
  }

  Future<http.Response> PostUser() {
    var res = http.post(
      Uri.parse('https://api.sand.platform.nymcard.com/v1/users'),
      headers: <String, String>{
        'apikey': 'tenant64-84tgdd96-2d4f-4834-ab68-8tg751a5c051'
      },
      body: jsonEncode(
          <String, String>{"first_name": FirstName, "last_name": LastName}),
    );
    return res;
  }
}
