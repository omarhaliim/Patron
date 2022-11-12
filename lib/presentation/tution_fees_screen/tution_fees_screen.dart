import 'package:omar_s_application2/presentation/settings_screen/settings_screen.dart';

import 'controller/tution_fees_controller.dart';
import 'package:flutter/material.dart';
import 'package:omar_s_application2/core/app_export.dart';

class TutionFeesScreen extends GetWidget<TutionFeesController> {
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
                                  CommonImageView(
                                    svgPath: ImageConstant.imgMusic,
                                  ),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  GestureDetector(
                                    child: CommonImageView(
                                      svgPath: ImageConstant.imgSettings,
                                    ),
                                    onTap: () {
                                      OnTapSettings(context, "tuition_fees");
                                    },
                                  ),
                                ],
                              ),
                            ),
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                    padding: getPadding(top: 7, right: 10),
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
                      Container(
                        child: Padding(
                          padding: getPadding(
                              top: 10, bottom: 20, left: 20, right: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              CommonImageView(
                                svgPath: ImageConstant.imgHome,
                              ),
                              CommonImageView(
                                svgPath: ImageConstant.imgRefresh,
                              ),
                              CommonImageView(
                                svgPath: ImageConstant.imgSave,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ]),
              ))),
    );
  }

  onTapTopupthrough() {
    Get.toNamed(AppRoutes.schoolFeesScreen);
  }

  onTapTopupthrough1() {
    Get.toNamed(AppRoutes.universityFeesScreen);
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
}
