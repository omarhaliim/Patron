
import 'controller/create_in_enter_pin_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:omar_s_application2/core/app_export.dart';
import 'package:omar_s_application2/widgets/custom_button.dart';
import 'package:pin_code_fields/pin_code_fields.dart';


class create_enter_pin extends GetWidget<create_enter_pinController> {
   final String FullName ;
   final String Phone ;
   final String Email ;

  create_enter_pin(this.FullName, this.Phone, this.Email);

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
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                      padding: getPadding(left: 25, top: 65, right: 25),
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
                                                padding: getPadding(
                                                    left: 64, top: 5, bottom: 5),
                                                child: ClipRRect(
                                                    borderRadius: BorderRadius.circular(
                                                        getHorizontalSize(2.00)),
                                                    child: CommonImageView(
                                                        svgPath: ImageConstant
                                                            .imgProgressbar,
                                                        height: getVerticalSize(4.00),
                                                        width:
                                                        getHorizontalSize(164.00))
                                                ))
                                          ]))),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                      padding: getPadding(left: 35, top: 54, right: 35),
                                      child: Text("A verfication code has been sent to".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtPoppinsMedium16Black900
                                              .copyWith(height: 1.00)))),
                              // Align(
                              //     alignment: Alignment.center,
                              //     child: Container(
                              //         width: double.infinity,
                              //         margin: getMargin(left: 25, top: 36, right: 25),
                              //         decoration: BoxDecoration(
                              //             borderRadius: BorderRadius.circular(
                              //                 getHorizontalSize(4.00))),
                              //         child: Column(
                              //             mainAxisSize: MainAxisSize.min,
                              //             crossAxisAlignment: CrossAxisAlignment.start,
                              //             mainAxisAlignment: MainAxisAlignment.start,
                              //             children: [
                              //               // Padding(
                              //               //     padding: getPadding(right: 10),
                              //               //     child: Text("msg_create_6_digit".tr,
                              //               //         overflow: TextOverflow.ellipsis,
                              //               //         textAlign: TextAlign.left,
                              //               //         style: AppStyle
                              //               //             .txtPoppinsMedium16Gray9007f
                              //               //             .copyWith(height: 1.00))),
                              //               Padding(
                              //                   padding: getPadding(top: 11),
                              //                   child: Container(
                              //                       width: getHorizontalSize(304.00),
                              //                       height: getVerticalSize(56.00),
                              //                       child: Obx(() => PinCodeTextField(
                              //                           appContext: context,
                              //                           controller: controller
                              //                               .otpController.value,
                              //                           length: 6,
                              //                           obscureText: false,
                              //                           obscuringCharacter: '*',
                              //                           keyboardType:
                              //                           TextInputType.number,
                              //                           autoDismissKeyboard: true,
                              //                           enableActiveFill: true,
                              //                           inputFormatters: [
                              //                             FilteringTextInputFormatter
                              //                                 .digitsOnly
                              //                           ],
                              //                           onChanged: (value) {},
                              //                           pinTheme: PinTheme(
                              //                               fieldHeight: getHorizontalSize(
                              //                                   56.00),
                              //                               fieldWidth: getHorizontalSize(
                              //                                   41.76),
                              //                               shape:
                              //                               PinCodeFieldShape.box,
                              //                               borderRadius: BorderRadius.circular(
                              //                                   getHorizontalSize(
                              //                                       4.00)),
                              //                               selectedFillColor:
                              //                               ColorConstant.fromHex(
                              //                                   "#1212121D"),
                              //                               activeFillColor:
                              //                               ColorConstant.fromHex("#1212121D"),
                              //                               inactiveFillColor: ColorConstant.fromHex("#1212121D"),
                              //                               inactiveColor: ColorConstant.gray90059,
                              //                               selectedColor: ColorConstant.gray90059,
                              //                               activeColor: ColorConstant.gray90059)))))
                              //             ]))),
                              CustomButton(
                                width: 240,
                                text: "lbl_continue".tr.toUpperCase(),
                                margin: getMargin(
                                    left: 25, top: 200, right: 25, bottom: 20),
                                alignment: Alignment.center,
                               // onTap: onTapContinue,
                                onTap: () {
                                  print(FullName);
                                  onTapContinue();
                                },
                              ),
                              CustomButton(
                                width: 240,
                                text: "Resend Mail".tr.toUpperCase(),
                                margin: getMargin(
                                    left: 25, top: 0, right: 25, bottom: 20),
                                alignment: Alignment.center,
                              )
                            ]))))));
  }

  onTapImgArrowleft() {
    Get.toNamed(AppRoutes.verfiyYourMobileScreen);
  }
  onTapContinue() {
    Get.toNamed(AppRoutes.homeScreen);
  }

// Future<http.Response> PostUser() {
//   String Phone = myControllerPhone.text.toString();
//   String Name = myControllerName.text.toString();
//   String Email = myControllerEmail.text.toString();
//   print(Name);
//   var res = http.post(
//     Uri.parse('https://api.sand.platform.nymcard.com/v1/users'),
//     headers: <String, String>{
//       'apikey': 'tenant64-84tgdd96-2d4f-4834-ab68-8tg751a5c051'
//     },
//     body: jsonEncode(<String, String>{
//       "first_name": Name,
//       "last_name": Name,
//        "email": Email
//     }),
//   );
//   return res;
//
// }


}
