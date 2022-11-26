import 'dart:async';

import '../../db/db_provider.dart';
import 'controller/splash_controller.dart';
import 'package:flutter/material.dart';
import 'package:omar_s_application2/core/app_export.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  // const SplashScreen({super.key, required this.number});

  late var number;

  SplashScreen(this.number);

  @override
  State<SplashScreen> createState() => _SplashScreenState(this.number);
}

class _SplashScreenState extends State<SplashScreen> {
  late var number;

  _SplashScreenState(this.number);

  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2), onTapSplashScreen);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.blueA700,
        body: Align(
          alignment: Alignment.center,
          //width: double.infinity,
          child: GestureDetector(
            onTap: () {},
            child: Column(
              //mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                Text("patron.".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style:
                        AppStyle.txtPoppinsExtraBold64.copyWith(height: 1.00))
              ],
            ),
          ),
        ),
      ),
    );
  }

  onTapSplashScreen() async {
    if (number == null) {
      // DatabaseProvider.db.nullifyDB();
      //
      // await DatabaseProvider.db.deleteDatabase(
      //     '/data/user/0/com.omarsapplication.app/databases/userDB.db');
      //
      // await DatabaseProvider.db.createDatabase();

      Get.toNamed(AppRoutes.boardingOneScreen);
    } else
      Get.toNamed(AppRoutes.signInEnterPinOneScreen);
  }
}

// class SplashScreen extends GetWidget<SplashController> {
//   bool firstTime = true;
//
//   @override
//   Widget build(BuildContext context) {
//     if (firstTime) {
//       Timer(Duration(seconds: 2), onTapSplashScreen);
//       firstTime = false;
//     }
//
//     return SafeArea(
//         child: Scaffold(
//             backgroundColor: ColorConstant.blueA700,
//             body: Align(
//                 alignment: Alignment.center,
//                 //width: double.infinity,
//                 child: GestureDetector(
//                     onTap: () {},
//                     child: Column(
//                         //mainAxisSize: MainAxisSize.min,
//                         crossAxisAlignment: CrossAxisAlignment.center,
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         mainAxisSize: MainAxisSize.max,
//                         children: [
//                           Text("patron.".tr,
//                               overflow: TextOverflow.ellipsis,
//                               textAlign: TextAlign.left,
//                               style: AppStyle.txtPoppinsExtraBold64
//                                   .copyWith(height: 1.00))
//                         ])))));
//   }
//
//   onTapSplashScreen() {
//     Get.toNamed(AppRoutes.boardingOneScreen);
//   }
// }
