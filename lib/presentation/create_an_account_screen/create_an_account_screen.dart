import 'package:colour/colour.dart';
import 'controller/create_an_account_controller.dart';
import 'package:flutter/material.dart';
import 'package:omar_s_application2/core/app_export.dart';
import 'package:omar_s_application2/presentation/verfiy_your_mobile_screen/verfiy_your_mobile_screen.dart';

class CreateAnAccountScreen extends GetWidget<CreateAnAccountController> {
  static String CreateEnterPin = '/create_enter_pin';

  final myControllerFirstName = TextEditingController();
  final myControllerLastName = TextEditingController();
  final myControllerPhone = TextEditingController();
  final myControllerEmail = TextEditingController();

  late final String FirstName;
  late final String LastName;
  late final String Phone;
  late final String Email;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray100,
            body: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
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
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: const [
                                      SizedBox(
                                        width: 175,
                                        child: LinearProgressIndicator(
                                          backgroundColor: Color(0xffabc9f8),
                                          minHeight: 4,
                                          value: 0.2,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ]))),
                  Padding(
                      padding: getPadding(left: 35, top: 54, right: 35),
                      child: Text("msg_create_an_accou".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtPoppinsMedium16Black900
                              .copyWith(height: 1.00))),
                  Padding(
                      padding: getPadding(left: 35, top: 45, right: 35),
                      child: Text("First Name".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtPoppinsMedium16Gray9007f
                              .copyWith(height: 1.00))),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      width: double.infinity,
                      margin: getMargin(left: 34, top: 3, right: 34),
                      decoration: AppDecoration.outlineGray90059.copyWith(
                          borderRadius: BorderRadiusStyle.circleBorder2),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          TextField(
                            keyboardType: TextInputType.name,
                            controller: myControllerFirstName,
                            autocorrect: false,
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 5, horizontal: 10),
                              border: OutlineInputBorder(),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                      padding: getPadding(left: 35, top: 45, right: 35),
                      child: Text("Last Name".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtPoppinsMedium16Gray9007f
                              .copyWith(height: 1.00))),
                  Align(
                      alignment: Alignment.center,
                      child: Container(
                          width: double.infinity,
                          margin: getMargin(left: 34, top: 3, right: 34),
                          decoration: AppDecoration.outlineGray90059.copyWith(
                              borderRadius: BorderRadiusStyle.circleBorder2),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                TextField(
                                  keyboardType: TextInputType.name,
                                  controller: myControllerLastName,
                                  autocorrect: false,
                                  decoration: InputDecoration(
                                    contentPadding: EdgeInsets.symmetric(
                                        vertical: 5, horizontal: 10),
                                    border: OutlineInputBorder(),
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
                          decoration: AppDecoration.outlineGray90059.copyWith(
                              borderRadius: BorderRadiusStyle.circleBorder2),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                TextField(
                                  keyboardType: TextInputType.emailAddress,
                                  controller: myControllerEmail,
                                  autocorrect: false,
                                  decoration: InputDecoration(
                                    contentPadding: EdgeInsets.symmetric(
                                        vertical: 5, horizontal: 10),
                                    border: OutlineInputBorder(),
                                  ),
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
                          decoration: AppDecoration.outlineGray90059.copyWith(
                              borderRadius: BorderRadiusStyle.circleBorder2),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                TextField(
                                  keyboardType: TextInputType.number,
                                  controller: myControllerPhone,
                                  autocorrect: false,
                                  decoration: InputDecoration(
                                    contentPadding: EdgeInsets.symmetric(
                                        vertical: 5, horizontal: 10),
                                    border: OutlineInputBorder(),
                                  ),
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
                      margin:
                          getMargin(left: 34, top: 40, right: 34, bottom: 100),
                      child: ElevatedButton(
                        child: Text('continue'.toUpperCase()),
                        onPressed: () {
                          FirstName = myControllerFirstName.text.toString();
                          LastName = myControllerLastName.text.toString();
                          Email = myControllerEmail.text.toString();
                          Phone = myControllerPhone.text.toString();
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => VerfiyYourMobileScreen(
                                  FirstName, LastName, Email, Phone),
                            ),
                          );
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
                ],
              ),
            )));
  }

  onTapImgArrowleft() {
    Get.toNamed(AppRoutes.startScreen);
  }

  onTapBtnContinue() {
    Get.toNamed(AppRoutes.verfiyYourMobileScreen);
  }
}
