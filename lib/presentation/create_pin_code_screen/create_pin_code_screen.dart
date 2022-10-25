import 'dart:convert';
import 'dart:math';
import 'package:colour/colour.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import '../sign_in_enter_pin_screen/sign_in_enter_pin_screen.dart';
import 'controller/create_pin_code_controller.dart';
import 'package:flutter/material.dart';
import 'package:omar_s_application2/core/app_export.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:http/http.dart' as http;
import 'package:omar_s_application2/db/user.dart';
import 'package:omar_s_application2/db/db_provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:omar_s_application2/widgets/progress_bar.dart';

class Create_Pin_Code_Screen extends StatefulWidget {
  late final String FirstName;
  late final String LastName;
  late final String Phone;
  late final String Email;
  late final String Method;

  Create_Pin_Code_Screen(
      this.FirstName, this.LastName, this.Email, this.Phone, this.Method);
  @override
  State<Create_Pin_Code_Screen> createState() =>
      CreatePinCodeScreen(FirstName, LastName, Email, Phone, Method);
}

class CreatePinCodeScreen extends State<Create_Pin_Code_Screen> {
  TextEditingController myControllerPin = TextEditingController();
  TextEditingController myControllerPin2 = TextEditingController();

  late final String FirstName;
  late final String LastName;
  late final String Phone;
  late final String Email;
  late final String Method;

  CreatePinCodeScreen(
      this.FirstName, this.LastName, this.Email, this.Phone, this.Method);

  bool isLoading = false;
  String text = "";

  @override
  void initState() {
    super.initState();

    if (Method == "Reset Login")
      text = "Reset PIN Code";
    else
      text = "$Method PIN Code";
  }

  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        onTapImgArrowleft();

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
                      ProgressBar(
                        progress_indicator: 0.8,
                        callback: onTapImgArrowleft,
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                            padding: getPadding(left: 35, right: 35),
                            child: Text(text,
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
                              if (!isValidPINCodes(
                                  myControllerPin.text.toString(),
                                  myControllerPin2.text.toString())) {
                                Alert(
                                        type: AlertType.error,
                                        context: context,
                                        title: "Incomplete PIN Code.")
                                    .show();
                              } else if (!isMatching(
                                  myControllerPin.text.toString(),
                                  myControllerPin2.text.toString())) {
                                Alert(
                                        type: AlertType.error,
                                        context: context,
                                        title: "PIN Codes don't match.")
                                    .show();
                              } else {
                                if (Method == "Create") {
                                  var response = await createUserAPI();
                                  int statusCode = response.statusCode;

                                  if (statusCode == 200) {
                                    String nym_id =
                                        jsonDecode(response.body)['id'];
                                    createUserDB(nym_id);

                                    SharedPreferences pref =
                                        await SharedPreferences.getInstance();
                                    pref.setString("number", Phone);

                                    myControllerPin.clear();
                                    myControllerPin2.clear();

                                    onTapBtnContinue();
                                  } else {
                                    Alert(
                                            type: AlertType.error,
                                            context: context,
                                            title:
                                                "Error has occured. Please try again!")
                                        .show();
                                  }
                                } else {
                                  await updateUserDB();

                                  SharedPreferences pref =
                                      await SharedPreferences.getInstance();
                                  pref.setString("number", Phone);

                                  myControllerPin.clear();
                                  myControllerPin2.clear();

                                  onTapBtnContinue();
                                }
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
              ))),
    );
  }

  onTapImgArrowleft() {
    myControllerPin.clear();
    myControllerPin2.clear();

    if (Method == "Create")
      Get.toNamed(AppRoutes.createAnAccountScreen);
    else if (Method == "Reset")
      Get.toNamed(AppRoutes.signInEnterPinOneScreen);
    else
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => SignInEnterPinScreen(phone: Phone),
        ),
      );
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

  Future<User> createUserDB(String nym_id) async {
    User user = User(
        nymID: nym_id,
        name: FirstName + " " + LastName,
        password: myControllerPin.text.toString(),
        phone: Phone,
        accountStatus: 'Potential',
        loginStatus: 'SignedOut');

    return await DatabaseProvider.db.insert(user);
  }

  Future<int> updateUserDB() async {
    List list = await DatabaseProvider.db.getUser(Phone);

    User new_user = list[0];

    new_user.password = myControllerPin.text.toString();

    return await DatabaseProvider.db.update(new_user);
  }

  bool isValidPINCodes(String one, String two) {
    if (one.length < 6 || two.length < 6)
      return false;
    else
      return true;
  }

  bool isMatching(String one, String two) {
    if (one == two)
      return true;
    else
      return false;
  }
}
