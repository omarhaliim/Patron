import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:omar_s_application2/presentation/settings_screen/settings_screen.dart';

import '../../widgets/navigation_bar.dart';
import 'controller/tution_fees_controller.dart';
import 'package:flutter/material.dart';
import 'package:omar_s_application2/core/app_export.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class TutionFeesScreen extends StatefulWidget {
  const TutionFeesScreen({Key? key}) : super(key: key);

  @override
  State<TutionFeesScreen> createState() => _TutionFeesScreenState();
}

class _TutionFeesScreenState extends State<TutionFeesScreen> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        Get.toNamed(AppRoutes.homeScreen);
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
                      Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Align(
                              alignment: Alignment.centerRight,
                              child: Row(
                                // mainAxisAlignment: MainAxisAlignment.end,
                                // crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  IconButton(
                                    icon: FaIcon(FontAwesomeIcons.headset),
                                    onPressed: () {
                                      OnTapSupport();
                                    },
                                  ),
                                  IconButton(
                                    icon: FaIcon(FontAwesomeIcons.gear),
                                    onPressed: () {
                                      OnTapSettings(context, "tuition_fees");
                                    },
                                  ),
                                ],
                              ),
                            ),
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                    padding: getPadding(right: 10),
                                    child: Text("lbl_tution_fees".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtPoppinsMedium32Black900
                                            .copyWith(height: 1.00)))),
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                    padding: getPadding(top: 10, right: 10),
                                    child: Text("lbl_select_category".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtPoppinsMedium16Gray600
                                            .copyWith(height: 1.00)))),
                            Align(
                                alignment: Alignment.center,
                                child: Padding(
                                    padding:
                                        getPadding(left: 10, top: 65, right: 9),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Expanded(
                                            child: Container(
                                              margin: getMargin(
                                                  left: 10, right: 10),
                                              child: ElevatedButton(
                                                onPressed: () {
                                                  onTapTopupthrough();
                                                },
                                                style: ElevatedButton.styleFrom(
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              20.0),
                                                    ),
                                                    primary: Colors.white,
                                                    onPrimary: Colors.black,
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 0,
                                                            vertical: 20),
                                                    textStyle: TextStyle(
                                                      fontFamily: 'Poppins',
                                                      fontSize: 20,
                                                    )),
                                                child: Column(
                                                  children: [
                                                    Container(
                                                      margin:
                                                          getMargin(bottom: 10),
                                                      child: Align(
                                                        alignment:
                                                            Alignment.center,
                                                        child: CommonImageView(
                                                            svgPath:
                                                                ImageConstant
                                                                    .imgTrash),
                                                      ),
                                                    ),
                                                    Text("lbl_school"
                                                        .tr
                                                        .toUpperCase())
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            child: Container(
                                              margin: getMargin(
                                                  left: 10, right: 10),
                                              child: ElevatedButton(
                                                onPressed: () {
                                                  onTapTopupthrough1();
                                                },
                                                style: ElevatedButton.styleFrom(
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              20.0),
                                                    ),
                                                    primary: Colors.black,
                                                    onPrimary: Colors.white,
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 0,
                                                            vertical: 20),
                                                    textStyle: TextStyle(
                                                      fontFamily: 'Poppins',
                                                      fontSize: 20,
                                                    )),
                                                child: Column(
                                                  children: [
                                                    Container(
                                                      margin:
                                                          getMargin(bottom: 10),
                                                      child: Align(
                                                        alignment:
                                                            Alignment.center,
                                                        child: CommonImageView(
                                                          svgPath: ImageConstant
                                                              .imgTicket42X36,
                                                        ),
                                                      ),
                                                    ),
                                                    Text("lbl_university"
                                                        .tr
                                                        .toUpperCase())
                                                  ],
                                                ),
                                              ),
                                            ),
                                          )
                                        ])))
                          ]),
                      NavigationBarWidget(Colors.black)
                    ]),
              ))),
    );
  }

  onTapTopupthrough() {
    Get.toNamed(AppRoutes.schoolFeesScreen);
  }

  onTapTopupthrough1() {
    // Get.toNamed(AppRoutes.universityFeesScreen);
    Alert(
            context: context,
            type: AlertType.info,
            title: "Coming Soon".toUpperCase(),
            style: AlertStyle(
                titleStyle: AppStyle.alertStyle.copyWith(height: 1.00)))
        .show();
  }

  onTapHomeScreen() {
    Get.toNamed(AppRoutes.homeScreen);
  }

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
      style: AlertStyle(titleStyle: AppStyle.alertStyle.copyWith(height: 1.00)),
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
