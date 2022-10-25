import 'package:colour/colour.dart';

import '../create_enter_pin/create_enter_pin.dart';
import '../sign_in_enter_pin_screen/sign_in_enter_pin_screen.dart';
import 'controller/verfiy_your_mobile_controller.dart';
import 'package:flutter/material.dart';
import 'package:omar_s_application2/core/app_export.dart';
import 'package:omar_s_application2/widgets/custom_button.dart';
import 'package:flutter_email_sender/flutter_email_sender.dart';
import 'package:omar_s_application2/widgets/progress_bar.dart';

class VerfiyYourMobileScreen extends GetWidget<VerfiyYourMobileController> {
  late final String FirstName;
  late final String LastName;
  late final String Phone;
  late final String Email;
  late final String Method;

  VerfiyYourMobileScreen(
      this.FirstName, this.LastName, this.Email, this.Phone, this.Method);
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        onTapImgArrowleft(context);
        return true;
      },
      child: SafeArea(
          child: Scaffold(
              backgroundColor: ColorConstant.gray100,
              body: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
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
                                          value: 0.4,
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
                              child: Text("Verfiy your mobile".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtPoppinsMedium16Black900
                                      .copyWith(height: 1.00))),
                        ),
                        Align(
                            alignment: Alignment.center,
                            child: Container(
                                width: getHorizontalSize(293.00),
                                margin: getMargin(left: 25, top: 37, right: 34),
                                child: Text(
                                    "You will send us a message to verfiy your mobile number, you wont be able to use the application if your mobile number is not operating on the same device."
                                        .tr,
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
                              child: Text('Send Sms'.toUpperCase()),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => create_enter_pin(
                                        FirstName,
                                        LastName,
                                        Email,
                                        Phone,
                                        Method),
                                  ),
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                  primary: Colour(0, 100, 254),
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 85, vertical: 7.5),
                                  textStyle: TextStyle(
                                      color: Colors.black,
                                      fontFamily: 'Poppins',
                                      fontSize: 20)),
                            ),
                          ),
                          // SizedBox(
                          //   height: 20,
                          // ),
                          // Align(
                          //   alignment: Alignment.center,
                          //   child: Container(
                          //     margin: getMargin(bottom: 100),
                          //     child: ElevatedButton(
                          //       child: Text('BACK'.toUpperCase()),
                          //       onPressed: onTapImgArrowleft,
                          //       style: ElevatedButton.styleFrom(
                          //           onPrimary: Colour(0, 100, 254),
                          //           primary: Colour(255, 255, 255),
                          //           padding: EdgeInsets.symmetric(
                          //               horizontal: 107.5, vertical: 7.5),
                          //           textStyle: TextStyle(
                          //               fontFamily: 'Poppins', fontSize: 20)),
                          //     ),
                          //   ),
                          // ),
                        ],
                      ),
                    )
                  ]))),
    );
  }

  onTapImgArrowleft(BuildContext context) {
    if (Method == "Create")
      Get.toNamed(AppRoutes.createAnAccountScreen);
    else if (Method == "Reset Login")
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => SignInEnterPinScreen(phone: Phone),
        ),
      );
    else
      Get.toNamed(AppRoutes.signInEnterPinOneScreen);
  }
}
