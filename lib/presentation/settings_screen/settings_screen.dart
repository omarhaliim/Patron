import 'package:omar_s_application2/presentation/splash_screen/splash_screen.dart';

import '../add_card_screen/add_card_screen.dart';
import 'controller/settings_controller.dart';
import 'package:flutter/material.dart';
import 'package:omar_s_application2/core/app_export.dart';
import 'package:colour/colour.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:omar_s_application2/db/db_provider.dart';
import 'package:omar_s_application2/db/user.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SettingsScreen extends GetWidget<SettingsController> {
  late final String page_name;
  late final String user_name;

  SettingsScreen(this.page_name, this.user_name);

  var number;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        onTapBack(context);
        return true;
      },
      child: SafeArea(
        child: Scaffold(
          backgroundColor: ColorConstant.gray100,
          body: Container(
            width: size.width,
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      margin: getMargin(left: 30, top: 30),
                      child: Text(
                        "Settings",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: ColorConstant.blueA700,
                          fontSize: getFontSize(
                            32,
                          ),
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                          height: 1.00,
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      margin: getMargin(top: 100, bottom: 100),
                      child: ElevatedButton(
                        child: Text('logout'.toUpperCase()),
                        onPressed: () async {
                          SharedPreferences pref =
                              await SharedPreferences.getInstance();
                          pref.remove("number");

                          number = pref.getString("number");

                          onTapLogout(context, number);
                        },
                        style: ElevatedButton.styleFrom(
                            primary: Colour(0, 100, 254),
                            padding: EdgeInsets.symmetric(
                                horizontal: 95, vertical: 7.5),
                            textStyle: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 20,
                            )),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  onTapLogout(BuildContext context, var number) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => SplashScreen(number),
      ),
    );
  }

  onTapBack(BuildContext context) {
    switch (page_name) {
      case "home":
        Get.toNamed(AppRoutes.homeScreen);
        break;
      case "school_fees":
        Get.toNamed(AppRoutes.schoolFeesScreen);
        break;
      case "tuition_fees":
        Get.toNamed(AppRoutes.tutionFeesScreen);
        break;
      case "school_pay_later_screen":
        Get.toNamed(AppRoutes.schoolPayLaterScreen);
        break;
      case "university_fees":
        Get.toNamed(AppRoutes.universityFeesScreen);
        break;
      case "university_pay_later_screen":
        Get.toNamed(AppRoutes.universityPayLaterScreen);
        break;
      case "add_money":
        Get.toNamed(AppRoutes.addMoneyScreen);
        break;
      case "add_card":
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => AddCardScreen(
              user_name: this.user_name,
            ),
          ),
        );
        break;
      default:
        break;
    }
  }
}
