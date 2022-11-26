import 'package:omar_s_application2/presentation/add_money_screen/add_money_screen.dart';
import 'package:omar_s_application2/presentation/splash_screen/splash_screen.dart';

import '../../widgets/navigation_bar.dart';
import '../add_card_screen/add_card_screen.dart';
import 'controller/settings_controller.dart';
import 'package:flutter/material.dart';
import 'package:omar_s_application2/core/app_export.dart';
import 'package:colour/colour.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:omar_s_application2/db/db_provider.dart';
import 'package:omar_s_application2/db/user.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SettingsScreen extends StatefulWidget {
  late final String page_name;
  late final String user_name;

  SettingsScreen(this.page_name, this.user_name);

  @override
  State<SettingsScreen> createState() =>
      _SettingsScreenState(this.page_name, this.user_name);
}

class _SettingsScreenState extends State<SettingsScreen> {
  late final String page_name;
  late final String user_name;

  _SettingsScreenState(this.page_name, this.user_name);

  var number;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        onTapBack();
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
                                      onPressed: onTapBack,
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
                                    IconButton(
                                      icon: FaIcon(FontAwesomeIcons.headset),
                                      onPressed: () {
                                        OnTapSupport();
                                      },
                                    ),
                                  ],
                                )
                              ]),
                          SizedBox(
                            height: 20,
                          ),
                          Text("Settings",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsMedium32Black900
                                  .copyWith(height: 1.00)),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Expanded(
                        child: ListView(
                          physics: BouncingScrollPhysics(),
                          children: [
                            createHeader("Profile"),
                            createButton("Personal Details", Icons.person),
                            SizedBox(
                              height: 20,
                            ),
                            createHeader("Security"),
                            createButton("Change passcode", Icons.pattern),
                            SizedBox(
                              height: 20,
                            ),
                            createHeader("About us"),
                            createButton("Like us on Facebook",
                                FontAwesomeIcons.facebook),
                            createButton("Follow us on Instagram",
                                FontAwesomeIcons.twitter),
                            createButton("Terms & Conditions",
                                FontAwesomeIcons.circleInfo),
                            Align(
                              alignment: Alignment.center,
                              child: Container(
                                margin: getMargin(top: 50, bottom: 50),
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
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(20.0),
                                      ),
                                      primary: Colors.red,
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
                      NavigationBarWidget(Colors.black)
                    ]),
              ))),
    );
  }

  Widget createHeader(String header_name) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Text(
        header_name,
        overflow: TextOverflow.ellipsis,
        textAlign: TextAlign.left,
        style: TextStyle(fontSize: 20),
      ),
    );
  }

  Widget createButton(String button_name, IconData iconData) {
    return Align(
        alignment: Alignment.center,
        child: GestureDetector(
            onTap: () {},
            child: Container(
                margin: getMargin(left: 10, right: 10, top: 10, bottom: 10),
                decoration: AppDecoration.outlineBlack9003f12
                    .copyWith(borderRadius: BorderRadiusStyle.roundedBorder16),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                          padding: getPadding(left: 13, top: 4, bottom: 4),
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(
                                  getHorizontalSize(16.00)),
                              child: IconButton(
                                icon: FaIcon(iconData),
                                onPressed: () {},
                              ))),
                      Container(
                          width: getHorizontalSize(147.00),
                          margin: getMargin(left: 7, top: 29, bottom: 25),
                          child: Text(button_name,
                              maxLines: null,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsMedium16Black900
                                  .copyWith(height: 1.50)))
                    ]))));
  }

  onTapLogout(BuildContext context, var number) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => SplashScreen(number),
      ),
    );
  }

  onTapBack() {
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
      case "transfer":
        Get.toNamed(AppRoutes.transferScreen);
        break;
      case "apply_for_a_loan_screen":
        Get.toNamed(AppRoutes.applyForLoan);
        break;
      case "add_money":
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => AddMoneyScreen(
              this.user_name,
            ),
          ),
        );
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
