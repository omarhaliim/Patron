import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:omar_s_application2/core/app_export.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:colour/colour.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:omar_s_application2/presentation/sign_in_verfiy_your_mobile_screen/sign_in_verfiy_your_mobile_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:shared_preferences/shared_preferences.dart';

class OTPScreen extends StatefulWidget {
  final String phone;
  OTPScreen(this.phone);
  @override
  SignInEnterOtpScreen createState() => SignInEnterOtpScreen(phone);
}

class SignInEnterOtpScreen extends State<OTPScreen> {
  static TextEditingController myControllerPin = TextEditingController();

  SignInEnterOtpScreen(this.phone);

  late final String phone;

  String? _verificationCode;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        myControllerPin.clear();
        onTapImgArrowleft(context);
        return true;
      },
      child: SafeArea(
          child: Scaffold(
              backgroundColor: ColorConstant.gray100,
              body: Container(
                  width: size.width,
                  child: SingleChildScrollView(
                      child: Container(
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                                padding: getPadding(
                                    left: 25, top: 40, right: 25, bottom: 40),
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        height: 50,
                                        width: 50,
                                        child: FloatingActionButton(
                                            backgroundColor:
                                                ColorConstant.gray100,
                                            foregroundColor:
                                                Colour(0, 100, 254),
                                            onPressed: () {
                                              myControllerPin.clear();
                                              onTapImgArrowleft(context);
                                            },
                                            child: Icon(
                                              Icons.arrow_back_outlined,
                                              size: 30,
                                            )),
                                      ),
                                      SizedBox(
                                        width: 175,
                                        child: LinearProgressIndicator(
                                          backgroundColor: Color(0xffabc9f8),
                                          minHeight: 4,
                                          value: 0.8,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 50,
                                      )
                                    ]))),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                                padding: getPadding(left: 35, right: 35),
                                child: Text(
                                    'The verification code is sent to +2$phone',
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtPoppinsMedium16Black900
                                        .copyWith(height: 1.00)))),
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Padding(
                                          padding: getPadding(right: 10),
                                          child: Text('Enter 6-Digit OTP Code',
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
                                          onChanged: (String value) {
                                            //print(myControllerPin.text);
                                          },
                                          controller: myControllerPin,
                                        ),
                                      ),
                                    ]))),
                        Align(
                            alignment: Alignment.center,
                            child: GestureDetector(
                                onTap: () {
                                  myControllerPin.clear();
                                  onTapTxtResendOtpCode(context);
                                },
                                child: Padding(
                                    padding: getPadding(
                                        left: 25, top: 33, right: 25),
                                    child: Text('Resend OTP Code?',
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtPoppinsMedium16BlueA7004c
                                            .copyWith(height: 1.00))))),
                        Container(
                          margin: getMargin(top: 100, bottom: 100),
                          child: ElevatedButton(
                            child: Text('continue'.toUpperCase()),
                            onPressed: () async {
                              if (isValidPin(myControllerPin.text.toString())) {
                                //isCorrectPin(myControllerPin.text.toString());

                                SharedPreferences pref =
                                    await SharedPreferences.getInstance();
                                pref.setString("number", phone);

                                myControllerPin.clear();

                                onTapContinue();
                              } else
                                Alert(
                                        type: AlertType.error,
                                        context: context,
                                        title: "Incomplete OTP Code.")
                                    .show();
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
                      ])))))),
    );
  }

  onTapImgArrowleft(BuildContext context) {
    //Get.toNamed(AppRoutes.signInVerfiyYourMobileScreen);

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => SignInVerfiyYourMobileScreen(phone: phone),
      ),
    );
  }

  onTapContinue() {
    Get.toNamed(AppRoutes.successfulAccountScreen);
  }

  onTapTxtResendOtpCode(BuildContext context) {
    //Get.toNamed(AppRoutes.signInVerfiyYourMobileScreen);

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => SignInVerfiyYourMobileScreen(phone: phone),
      ),
    );
  }

  bool isValidPin(String PIN) {
    if (PIN.length < 6)
      return false;
    else
      return true;
  }

  _verifyPhone() async {
    await FirebaseAuth.instance.verifyPhoneNumber(
        phoneNumber: '+2${widget.phone}',
        verificationCompleted: (PhoneAuthCredential credential) async {
          await FirebaseAuth.instance
              .signInWithCredential(credential)
              .then((value) async {
            if (value.user != null) {
              Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => onTapContinue()),
                  (route) => false);
            }
          });
        },
        verificationFailed: (FirebaseAuthException e) {
          //print(e.message);
        },
        codeSent: (String? verficationID, int? resendToken) {
          setState(() {
            _verificationCode = verficationID;
          });
        },
        codeAutoRetrievalTimeout: (String verificationID) {
          setState(() {
            _verificationCode = verificationID;
          });
        },
        timeout: Duration(seconds: 120));
  }

  // @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   _verifyPhone();
  // }

  void isCorrectPin(String pin) async {
    try {
      await FirebaseAuth.instance
          .signInWithCredential(PhoneAuthProvider.credential(
              verificationId: _verificationCode!, smsCode: pin))
          .then((value) async {
        if (value.user != null) {
          Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(builder: (context) => onTapContinue()),
              (route) => false);
        }
      });
    } catch (e) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(e.toString())));
    }
  }
}
