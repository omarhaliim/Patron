import 'controller/splash_controller.dart';
import 'package:flutter/material.dart';
import 'package:omar_s_application2/core/app_export.dart';

class SplashScreen extends GetWidget<SplashController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.blueA700,
            body: Container(
                width: size.width,
                child: SingleChildScrollView(
                    child: GestureDetector(
                        onTap: () {
                          onTapSplashScreen();
                        },
                        child: Container(
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                              Padding(
                                  padding: getPadding(
                                      left: 60,
                                      top: 350,
                                      right: 60,
                                      bottom: 20),
                                  child: Text("patron.".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtPoppinsExtraBold64
                                          .copyWith(height: 1.00)))
                            ])))))));
  }

  onTapSplashScreen() {
    Get.toNamed(AppRoutes.boardingOneScreen);
  }
}
