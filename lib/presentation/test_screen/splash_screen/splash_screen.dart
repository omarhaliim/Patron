import 'controller/splash_controller.dart';
import 'package:flutter/material.dart';
import 'package:omar_s_application2/core/app_export.dart';

class SplashScreen extends GetWidget<SplashController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.blueA700,
            body: Align(
                alignment: Alignment.center,
                //width: double.infinity,
                child: GestureDetector(
                    onTap: () {
                      print("Am here");
                      onTapSplashScreen();
                    },
                    child: Column(
                        //mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text("patron.".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsExtraBold64
                                  .copyWith(height: 1.00))
                        ])))));
  }

  onTapSplashScreen() {
    Get.toNamed(AppRoutes.boardingOneScreen);
  }
}
