import 'controller/create_an_account_controller.dart';
import 'package:flutter/material.dart';
import 'package:omar_s_application2/core/app_export.dart';
import 'package:omar_s_application2/widgets/custom_button.dart';

import 'package:omar_s_application2/presentation/create_enter_pin/create_enter_pin.dart';
import 'package:omar_s_application2/presentation/create_enter_pin/binding/create_enter_pin_binding.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class CreateAnAccountScreen extends GetWidget<CreateAnAccountController> {
  static String CreateEnterPin = '/create_enter_pin';

  final myControllerName = TextEditingController();
  final myControllerPhone = TextEditingController();
  final myControllerEmail = TextEditingController();

  late final String FullName;
  late final String Phone;
  late final String Email;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray100,
            body: Container(
                width: size.width,
                child: SingleChildScrollView(
                    child: Container(
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                      Padding(
                          padding: getPadding(left: 34, top: 65, right: 34),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                GestureDetector(
                                    onTap: () {
                                      onTapImgArrowleft();
                                    },
                                    child: CommonImageView(
                                        svgPath: ImageConstant.imgArrowleft,
                                        height: getVerticalSize(14.00),
                                        width: getHorizontalSize(16.00))),
                                Padding(
                                    padding:
                                        getPadding(left: 64, top: 5, bottom: 5),
                                    child: ClipRRect(
                                        borderRadius: BorderRadius.circular(
                                            getHorizontalSize(2.00)),
                                        child: CommonImageView(
                                            svgPath:
                                                ImageConstant.imgProgressbar,
                                            height: getVerticalSize(4.00),
                                            width: getHorizontalSize(147.00))))
                              ])),
                      Padding(
                          padding: getPadding(left: 35, top: 54, right: 35),
                          child: Text("msg_create_an_accou".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsMedium16Black900
                                  .copyWith(height: 1.00))),
                      Padding(
                          padding: getPadding(left: 35, top: 45, right: 35),
                          child: Text("lbl_full_name".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsMedium16Gray9007f
                                  .copyWith(height: 1.00))),
                      Align(
                          alignment: Alignment.center,
                          child: Container(
                              width: double.infinity,
                              margin: getMargin(left: 34, top: 3, right: 34),
                              decoration: AppDecoration.outlineGray90059
                                  .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.circleBorder2),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    TextField(
                                      autocorrect: false,
                                      controller: myControllerName,
                                      //obscureText: true,
                                      decoration: InputDecoration(
                                        border: OutlineInputBorder(),
                                        //labelText: 'Password',
                                      ),
                                    ),
                                    // Container(
                                    //     height: getVerticalSize(33.00),
                                    //     width: getHorizontalSize(296.00),
                                    //     margin: getMargin(all: 4),
                                    //     decoration: BoxDecoration(
                                    //         borderRadius: BorderRadius.circular(
                                    //                     getHorizontalSize(4.00)))
                                    // )
                                  ]))),
                      Padding(
                          padding: getPadding(left: 35, top: 47, right: 35),
                          child: Text("lbl_email".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsMedium16Gray9007f
                                  .copyWith(height: 1.00))),
                      Align(
                          alignment: Alignment.center,
                          child: Container(
                              width: double.infinity,
                              margin: getMargin(left: 34, top: 4, right: 34),
                              decoration: AppDecoration.outlineGray90059
                                  .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.circleBorder2),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    TextField(
                                      controller: myControllerEmail,
                                    ),
                                    // Container(
                                    //     height: getVerticalSize(33.00),
                                    //     width: getHorizontalSize(296.00),
                                    //     margin: getMargin(all: 4),
                                    //     decoration: BoxDecoration(
                                    //         borderRadius: BorderRadius.circular(
                                    //             getHorizontalSize(4.00))))
                                  ]))),
                      Padding(
                          padding: getPadding(left: 35, top: 47, right: 35),
                          child: Text("lbl_mobile".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsMedium16Gray9007f
                                  .copyWith(height: 1.00))),
                      Align(
                          alignment: Alignment.center,
                          child: Container(
                              width: double.infinity,
                              margin: getMargin(left: 34, top: 4, right: 34),
                              decoration: AppDecoration.outlineGray90059
                                  .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.circleBorder2),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    TextField(
                                      controller: myControllerPhone,
                                    ),
                                    // Container(
                                    //     height: getVerticalSize(33.00),
                                    //     width: getHorizontalSize(296.00),
                                    //     margin: getMargin(all: 4),
                                    //     decoration: BoxDecoration(
                                    //         borderRadius: BorderRadius.circular(
                                    //             getHorizontalSize(4.00))))
                                  ]))),
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          margin: getMargin(left: 34, top: 40, right: 34),
                          child: ElevatedButton(
                            child: Text('continue'.toUpperCase() ),
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                primary: Colors.blueAccent,
                                padding: EdgeInsets.symmetric(
                                    horizontal: 40, vertical: 20),
                                textStyle: TextStyle(
                                  color: Colors.black,
                                    fontFamily: 'Poppins',
                                    fontSize: 20, fontWeight: FontWeight.bold)),
                          ),
                        ),
                      ),
                    ]))))));
  }

  onTapImgArrowleft() {
    Get.toNamed(AppRoutes.startScreen);
  }

  onTapBtnContinue() {
    Get.toNamed(AppRoutes.verfiyYourMobileScreen);
  }
}
