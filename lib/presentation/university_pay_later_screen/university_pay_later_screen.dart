import '../settings_screen/settings_screen.dart';
import 'controller/university_pay_later_controller.dart';
import 'package:flutter/material.dart';
import 'package:omar_s_application2/core/app_export.dart';
import 'package:colour/colour.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class UniversityPayLaterScreen extends StatefulWidget {
  const UniversityPayLaterScreen({Key? key}) : super(key: key);

  @override
  State<UniversityPayLaterScreen> createState() =>
      _UniversityPayLaterScreenState();
}

class _UniversityPayLaterScreenState extends State<UniversityPayLaterScreen> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        onTapImgArrowleft();
        return true;
      },
      child: SafeArea(
          child: Scaffold(
              backgroundColor: ColorConstant.gray100,
              body: Container(
                margin: getMargin(
                  left: 20,
                  top: 30,
                  right: 20,
                ),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
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
                            Row(
                              // mainAxisAlignment: MainAxisAlignment.end,
                              // crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    OnTapSupport();
                                  },
                                  child: CommonImageView(
                                    svgPath: ImageConstant.imgMusic,
                                  ),
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                GestureDetector(
                                  child: CommonImageView(
                                    svgPath: ImageConstant.imgSettings,
                                  ),
                                  onTap: () {
                                    OnTapSettings(
                                        context, "university_pay_later_screen");
                                  },
                                ),
                              ],
                            )
                          ]),
                      Column(
                        children: [
                          Text("lbl_pay_later".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsMedium32Black900
                                  .copyWith(height: 1.00)),
                          SizedBox(
                            height: 10,
                          ),
                          Text("lbl_select_program".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsMedium16Gray600
                                  .copyWith(height: 1.00)),
                        ],
                      ),
                      Expanded(
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              ElevatedButton(
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 0, horizontal: 25),
                                  child: Column(
                                    children: [
                                      Align(
                                          alignment: Alignment.centerLeft,
                                          child: CommonImageView(
                                              svgPath: ImageConstant
                                                  .imgArrowdown33X33)),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text(
                                          "msg_5_equal_install".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                onPressed: () {
                                  onTapInstallments5();
                                },
                                style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20.0),
                                    ),
                                    primary: Colors.white,
                                    onPrimary: Colors.black,
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 0, vertical: 30),
                                    textStyle: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 20,
                                    )),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              ElevatedButton(
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 0, horizontal: 25),
                                  child: Column(
                                    children: [
                                      Align(
                                          alignment: Alignment.centerLeft,
                                          child: CommonImageView(
                                              svgPath:
                                                  ImageConstant.imgArrowdown1)),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text(
                                          "msg_12_equal_instal".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          // style: AppStyle.txtPoppinsRegular20
                                          //     .copyWith(height: 1.00),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                onPressed: () {
                                  onTapInstallments12();
                                },
                                style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20.0),
                                    ),
                                    primary: Colour(0, 100, 254),
                                    onPrimary: Colors.white,
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 0, vertical: 30),
                                    textStyle: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 20,
                                    )),
                              ),
                            ]),
                      ),
                      getNavigationBar()
                    ]),
              ))),
    );
  }

  Widget getNavigationBar() {
    return Container(
      child: Padding(
        padding: getPadding(top: 10, bottom: 20, left: 20, right: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            GestureDetector(
              onTap: () {
                Get.toNamed(AppRoutes.homeScreen);
              },
              child: CommonImageView(
                svgPath: ImageConstant.imgHome,
              ),
            ),
            GestureDetector(
              onTap: () {
                Get.toNamed(AppRoutes.transferScreen);
              },
              child: CommonImageView(
                svgPath: ImageConstant.imgRefresh,
              ),
            ),
            GestureDetector(
              onTap: () {
                Alert(
                        type: AlertType.error,
                        context: context,
                        title:
                            "Your account has not activated yet!".toUpperCase())
                    .show();
              },
              child: CommonImageView(
                svgPath: ImageConstant.imgSave,
              ),
            ),
          ],
        ),
      ),
    );
  }

  onTapImgArrowleft() {
    Get.toNamed(AppRoutes.universityFeesScreen);
  }

  onTapHomeScreen() {
    Get.toNamed(AppRoutes.homeScreen);
  }

  onTapInstallments5() {}

  onTapInstallments12() {}

  OnTapSettings(BuildContext context, String page_name) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => SettingsScreen(page_name, ""),
      ),
    );
  }

  OnTapSupport() {
    Alert(
      context: context,
      type: AlertType.info,
      title: "call us on: +201553490803".toUpperCase(),
      buttons: [
        DialogButton(
          child: Text(
            "OKAY",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          onPressed: () => Navigator.pop(context),
          gradient: LinearGradient(colors: [
            Color.fromRGBO(116, 116, 191, 1.0),
            Color.fromRGBO(52, 138, 199, 1.0)
          ]),
        )
      ],
    ).show();
  }
}
