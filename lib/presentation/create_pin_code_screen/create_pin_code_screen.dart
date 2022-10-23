import 'dart:convert';

import 'package:colour/colour.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'controller/create_pin_code_controller.dart';
import 'package:flutter/material.dart';
import 'package:omar_s_application2/core/app_export.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:http/http.dart' as http;
import 'package:omar_s_application2/db/user.dart';
import 'package:omar_s_application2/db/db_provider.dart';

class CreatePinCodeScreen extends GetWidget<CreatePinCodeController> {
  @override
  TextEditingController myControllerPin = TextEditingController();
  TextEditingController myControllerPin2 = TextEditingController();

  late final String FirstName;
  late final String LastName;
  late final String Phone;
  late final String Email;

  CreatePinCodeScreen(this.FirstName, this.LastName, this.Email, this.Phone);

  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray100,
            body: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                        onTapImgArrowleft();
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
                                            backgroundColor: Color(0xffabc9f8),
                                            minHeight: 4,
                                            value: 0.8,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ]))),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: getPadding(left: 35, top: 54, right: 35),
                          child: Text("lbl_create_pin_code".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsMedium16Black900
                                  .copyWith(height: 1.00))),
                    ),
                    Align(
                        alignment: Alignment.center,
                        child: Container(
                            width: double.infinity,
                            margin: getMargin(left: 34, top: 36, right: 34),
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
                                      child: Text("msg_create_6_digit".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtPoppinsMedium16Gray9007f
                                              .copyWith(height: 1.00))),
                                  Padding(
                                    padding: getPadding(top: 11),
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
                                      onChanged: (String value) {
                                        print(myControllerPin.text);
                                      },
                                      controller: myControllerPin,
                                    ),
                                  )
                                ]))),
                    Align(
                        alignment: Alignment.center,
                        child: Container(
                            width: double.infinity,
                            margin: getMargin(left: 34, top: 19, right: 34),
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
                                      child: Text("msg_repeat_6_digit".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtPoppinsMedium16Gray9007f
                                              .copyWith(height: 1.00))),
                                  Padding(
                                    padding: getPadding(top: 11),
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
                                      onChanged: (String value) {
                                        print(myControllerPin.text);
                                      },
                                      controller: myControllerPin2,
                                    ),
                                  )
                                ]))),
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        margin: getMargin(top: 100, bottom: 100),
                        child: ElevatedButton(
                          child: Text('continue'.toUpperCase()),
                          onPressed: () async {
                            if (myControllerPin.text.toString() ==
                                myControllerPin2.text.toString()) {
                              var response = await createUserAPI();
                              String nym_id = jsonDecode(response.body)['id'];
                              int statusCode = response.statusCode;

                              if (statusCode == 200) createUserDB("id");

                              //Get.toNamed(AppRoutes.successfulAccountScreen);
                            } else {
                              Alert(
                                      context: context,
                                      title: "Warning ",
                                      desc: "PIN Code doesn't match")
                                  .show();
                            }
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
                    ),
                  ]),
            )));
  }

  onTapImgArrowleft() {
    Get.back();
  }

  onTapBtnContinue() {
    Get.toNamed(AppRoutes.successfulAccountScreen);
  }

  Future<dynamic> createUserAPI() async {
    var response = await http.post(
      Uri.parse('https://api.sand.platform.nymcard.com/v1/users'),
      headers: <String, String>{
        'apikey': 'tenant64-84tgdd96-2d4f-4834-ab68-8tg751a5c051'
      },
      body: jsonEncode(<String, String>{
        'first_name': FirstName,
        'last_name': LastName,
        'email': Email
      }),
    );
    return response;
  }

  void createUserDB(String nym_id) async {
    User user = User(
        nymID: nym_id,
        name: FirstName + " " + LastName,
        password: myControllerPin.text.toString(),
        phone: Phone,
        accountStatus: 'Potential',
        loginStatus: 'SignedOut');

    await DatabaseProvider.db.insert(user);
  }
}
