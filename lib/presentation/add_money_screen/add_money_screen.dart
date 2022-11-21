import 'package:colour/colour.dart';

import '../add_card_screen/add_card_screen.dart';
import '../settings_screen/settings_screen.dart';
import 'controller/add_money_controller.dart';
import 'package:flutter/material.dart';
import 'package:omar_s_application2/core/app_export.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class AddMoneyScreen extends StatefulWidget {
  late String username;
  AddMoneyScreen(this.username);

  @override
  State<AddMoneyScreen> createState() => _AddMoneyScreenState(username);
}

class _AddMoneyScreenState extends State<AddMoneyScreen> {
  final String username;
  _AddMoneyScreenState(this.username);

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
                        children: [
                          Align(
                            alignment: Alignment.centerRight,
                            child: Row(
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
                                    OnTapSettings(context, "add_money");
                                  },
                                ),
                              ],
                            ),
                          ),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding: getPadding(top: 7, right: 10),
                                  child: Text("lbl_add_money2".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtPoppinsMedium32Black900
                                          .copyWith(height: 1.00)))),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding: getPadding(top: 7, right: 10),
                                  child: Text("msg_select_top_up_m".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtPoppinsMedium16Gray600
                                          .copyWith(height: 1.00)))),
                        ],
                      ),
                      Container(
                        margin: getMargin(top: 100, bottom: 100),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Expanded(
                              child: Container(
                                margin: getMargin(left: 10, right: 10),
                                child: ElevatedButton(
                                  onPressed: () {
                                    onTapTopUp(context);
                                  },
                                  style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(20.0),
                                      ),
                                      primary: Colors.black,
                                      onPrimary: Colors.white,
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 0, vertical: 20),
                                      textStyle: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: 20,
                                      )),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 0, horizontal: 8),
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(bottom: 15),
                                          child: CommonImageView(
                                            svgPath:
                                                ImageConstant.imgComputer21X29,
                                            height: 55,
                                            width: 55,
                                          ),
                                        ),
                                        Text(
                                          textAlign: TextAlign.center,
                                          "msg_top_up_through".tr,
                                          style: AppStyle
                                              .txtPoppinsRegular20WhiteA700
                                              .copyWith(
                                            height: 1.00,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                margin: getMargin(left: 10, right: 10),
                                child: ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(20.0),
                                      ),
                                      primary: Colour(255, 210, 40),
                                      onPrimary: Colour(0, 100, 254),
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 0, vertical: 20),
                                      textStyle: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: 20,
                                      )),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 0, horizontal: 8),
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 0, bottom: 10),
                                          child: CommonImageView(
                                            svgPath:
                                                ImageConstant.imgContrast48X48,
                                          ),
                                        ),
                                        Text(
                                          textAlign: TextAlign.center,
                                          "msg_add_cash_throug".tr,
                                          style: AppStyle
                                              .txtPoppinsRegular20BlueA700
                                              .copyWith(
                                            height: 1.00,
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 5),
                                          child: CommonImageView(
                                            svgPath: ImageConstant.imgGroup2,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            // Align(
                            //     alignment: Alignment.center,
                            //     child: Padding(
                            //         padding: getPadding(
                            //             left: 10, top: 65, right: 10),
                            //         child: Row(
                            //             mainAxisAlignment:
                            //                 MainAxisAlignment.spaceBetween,
                            //             crossAxisAlignment:
                            //                 CrossAxisAlignment.center,
                            //             mainAxisSize: MainAxisSize.max,
                            //             children: [
                            //
                            //             ]))),
                            // Align(
                            //     alignment: Alignment.center,
                            //     child: Padding(
                            //         padding: getPadding(
                            //             left: 10, top: 30, right: 10),
                            //         child: Row(
                            //             mainAxisAlignment:
                            //                 MainAxisAlignment.spaceBetween,
                            //             crossAxisAlignment:
                            //                 CrossAxisAlignment.center,
                            //             mainAxisSize: MainAxisSize.max,
                            //             children: [
                            //
                            //             ]))),
                            // Container(
                            //   margin: getMargin(left: 10, right: 10),
                            //   child: ElevatedButton(
                            //     onPressed: () {},
                            //     style: ElevatedButton.styleFrom(
                            //         primary: Colors.white,
                            //         padding: EdgeInsets.symmetric(
                            //             horizontal: 0, vertical: 20),
                            //         textStyle: TextStyle(
                            //           fontFamily: 'Poppins',
                            //           fontSize: 20,
                            //         )),
                            //     child: Padding(
                            //       padding: const EdgeInsets.symmetric(
                            //           vertical: 0, horizontal: 8),
                            //       child: Column(
                            //         children: [
                            //           Padding(
                            //             padding: const EdgeInsets.only(
                            //                 left: 0, bottom: 10),
                            //             child: CommonImageView(
                            //               imagePath:
                            //                   ImageConstant.imgPaymoblogo,
                            //               height: getVerticalSize(
                            //                 49.00,
                            //               ),
                            //               width: getHorizontalSize(
                            //                 43.00,
                            //               ),
                            //             ),
                            //           ),
                            //           Text(
                            //             textAlign: TextAlign.center,
                            //             "msg_add_cash_throug".tr,
                            //             style: AppStyle.txtPoppinsRegular20
                            //                 .copyWith(
                            //               height: 1.00,
                            //             ),
                            //           ),
                            //           Padding(
                            //             padding: const EdgeInsets.only(top: 5),
                            //             child: CommonImageView(
                            //               imagePath:
                            //                   ImageConstant.imgPaymoblogo26X114,
                            //               height: getVerticalSize(
                            //                 26.00,
                            //               ),
                            //               width: getHorizontalSize(
                            //                 114.00,
                            //               ),
                            //             ),
                            //           ),
                            //         ],
                            //       ),
                            //     ),
                            //   ),
                            // ),
                            Expanded(
                              child: Container(
                                margin: getMargin(left: 10, right: 10),
                                child: ElevatedButton(
                                  onPressed: () {
                                    onTapRequestFromPatron();
                                  },
                                  style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(20.0),
                                      ),
                                      primary: Colour(0, 100, 254),
                                      onPrimary: Colors.white,
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 0, vertical: 20),
                                      textStyle: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: 20,
                                      )),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 0, horizontal: 8),
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(bottom: 10),
                                          child: CommonImageView(
                                            imagePath: ImageConstant.imgPatron,
                                            height: 65,
                                            width: 65,
                                          ),
                                        ),
                                        Text(
                                          textAlign: TextAlign.center,
                                          "msg_request_from_yo".tr,
                                          style: AppStyle
                                              .txtPoppinsRegular20WhiteA700
                                              .copyWith(
                                            height: 1.00,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
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

  onTapTopUp(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => AddCardScreen(user_name: this.username),
      ),
    );
  }

  onTapRequestFromPatron() {
    Get.toNamed(AppRoutes.transferScreen);
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
