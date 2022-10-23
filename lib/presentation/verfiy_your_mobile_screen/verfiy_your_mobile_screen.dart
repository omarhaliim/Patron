import 'package:colour/colour.dart';

import '../create_enter_pin/create_enter_pin.dart';
import 'controller/verfiy_your_mobile_controller.dart';
import 'package:flutter/material.dart';
import 'package:omar_s_application2/core/app_export.dart';
import 'package:omar_s_application2/widgets/custom_button.dart';
import 'package:flutter_email_sender/flutter_email_sender.dart';

class VerfiyYourMobileScreen extends GetWidget<VerfiyYourMobileController> {
  late final String FirstName;
  late final String LastName;
  late final String Phone;
  late final String Email;

  VerfiyYourMobileScreen(this.FirstName, this.LastName, this.Email, this.Phone);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
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
                            padding: getPadding(left: 35, top: 55, right: 35),
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
                  Column(
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
                                    FirstName, LastName, Email, Phone),
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
                      SizedBox(
                        height: 20,
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          margin: getMargin(bottom: 100),
                          child: ElevatedButton(
                            child: Text('BACK'.toUpperCase()),
                            onPressed: onTapImgArrowleft,
                            style: ElevatedButton.styleFrom(
                                onPrimary: Colour(0, 100, 254),
                                primary: Colour(255, 255, 255),
                                padding: EdgeInsets.symmetric(
                                    horizontal: 107.5, vertical: 7.5),
                                textStyle: TextStyle(
                                    fontFamily: 'Poppins', fontSize: 20)),
                          ),
                        ),
                      ),
                    ],
                  )
                ])));
  }

  onTapImgArrowleft() {
    Get.toNamed(AppRoutes.createAnAccountScreen);
  }
}
