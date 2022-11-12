import 'dart:io';

import 'package:shared_preferences/shared_preferences.dart';
import '../../db/user.dart';
// import '../registration_five_screen/registration_five_screen.dart';
import '../registration_five_screen/registration_five_screen.dart';
import 'controller/registration_four_controller.dart';
import 'package:flutter/material.dart';
import 'package:omar_s_application2/core/app_export.dart';

import 'package:colour/colour.dart';
import 'package:omar_s_application2/db/db_provider.dart';

class RegistrationFourScreen extends GetWidget<RegistrationFourController> {
  late final String image1;
  late final String image2;

  RegistrationFourScreen(this.image1, this.image2);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        onTapImgArrowleft();
        return true;
      },
      child: SafeArea(
          child: Scaffold(
              backgroundColor: ColorConstant.blueA700,
              body: SingleChildScrollView(
                child: Container(
                    margin: getMargin(left: 15, right: 15),
                    child: Column(
                        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.center,
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
                                        backgroundColor: ColorConstant.gray100,
                                        foregroundColor: Colour(0, 100, 254),
                                        onPressed: onTapImgArrowleft,
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
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: getPadding(bottom: 20),
                            child: Text(
                              "scan your document".toUpperCase(),
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: getFontSize(
                                  20,
                                ),
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500,
                                height: 1.00,
                              ),
                            ),
                          ),
                          Container(
                              //width: size.width,
                              decoration: AppDecoration.fillWhiteA700.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder16),
                              child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Padding(
                                        padding: getPadding(
                                            left: 24, top: 30, right: 24),
                                        child: Text("msg_confirm_your_da".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtPoppinsMedium22
                                                .copyWith(height: 1.00))),
                                    Container(
                                      margin: getMargin(
                                          bottom: 20,
                                          left: 24,
                                          top: 19,
                                          right: 24),
                                      child: Text(
                                        "Please verify and confirm once again \n your data that will be used for account \n creation.",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.center,
                                        maxLines: null,
                                        style: TextStyle(
                                          color: Colour(92, 87, 82),
                                          fontSize: getFontSize(
                                            12,
                                          ),
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w500,
                                          height: 1.00,
                                        ),
                                      ),
                                      // child: Text(
                                      //     "msg_please_verify_a"
                                      //         .tr,
                                      //     maxLines: null,
                                      //     textAlign:
                                      //     TextAlign
                                      //         .center,
                                      //     style: AppStyle
                                      //         .txtPoppinsRegular16
                                      //         .copyWith(
                                      //         height:
                                      //         1.00))
                                    ),
                                    Padding(
                                        padding: getPadding(
                                            left: 24,
                                            top: 22,
                                            right: 22,
                                            bottom: 22),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Container(
                                                  child: Align(
                                                      alignment:
                                                          Alignment.center,
                                                      child: makeThumbnailImage(
                                                          this.image1)

                                                      // ClipRRect(
                                                      //     borderRadius:
                                                      //         BorderRadius.circular(
                                                      //             getHorizontalSize(
                                                      //                 25.00)),
                                                      //     child: CommonImageView(
                                                      //         imagePath: ImageConstant
                                                      //             .imgItidfrontim,
                                                      //         height:
                                                      //             getSize(132.00),
                                                      //         width: getSize(
                                                      //             132.00)))

                                                      )),
                                              SizedBox(
                                                height: 20,
                                              ),
                                              Container(
                                                  child: Align(
                                                      alignment:
                                                          Alignment.center,
                                                      child: makeThumbnailImage(
                                                          this.image2)))
                                            ]))
                                  ])),
                          Align(
                            alignment: Alignment.center,
                            child: Container(
                              margin: getMargin(bottom: 20, top: 30),
                              child: ElevatedButton(
                                child: Text('continue'.toUpperCase()),
                                onPressed: () {
                                  Get.toNamed(AppRoutes.registrationFiveScreen);
                                  // Navigator.push(
                                  //   context,
                                  //   MaterialPageRoute(
                                  //     builder: (context) =>
                                  //         RegistrationFiveScreen(),
                                  //   ),
                                  // );
                                },
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
                        ])),
              ))),
    );
  }

  Widget makeThumbnailImage(String? path) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Image.file(
        File(path!),
        fit: BoxFit.cover,
        width: 800,
        height: 300,
      ),
    );
  }

  onTapImgArrowleft() {
    Get.toNamed(AppRoutes.registrationThreeScreen);
  }

  onTapBtnContinue() {
    Get.toNamed(AppRoutes.createPinCodeScreen);
  }
}
