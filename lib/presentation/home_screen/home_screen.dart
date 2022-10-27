import 'dart:io';

import 'package:flutter/material.dart';
import 'package:omar_s_application2/core/app_export.dart';
import 'package:colour/colour.dart';
import 'package:omar_s_application2/db/db_provider.dart';
import 'package:omar_s_application2/models/transactions.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:omar_s_application2/db/user.dart';

import '../settings_screen/settings_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Transactions> transactions = [];

  @override
  void initState() {
    super.initState();

    for (int i = 0; i < 6; i++) {
      Transactions t =
          Transactions("Transfer to Ahmed", "2022.05.04", "-2500 EGP");
      transactions.add(t);
    }
    print(transactions.length);
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        exit(0);
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
                          OnTapSettings(context, "home");
                        },
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: getPadding(
                      left: 5,
                      top: 12,
                      right: 10,
                    ),
                    child: Text(
                      "Welcome,",
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
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: getPadding(
                      left: 5,
                      top: 1,
                      right: 10,
                    ),
                    child: FutureBuilder(
                      future: getUserName(),
                      builder: (context, snapshot) {
                        String username = "";
                        if (snapshot.hasData) {
                          username = snapshot.data.toString();
                        }

                        return Text(
                          username,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: ColorConstant.gray600,
                            fontSize: getFontSize(
                              16,
                            ),
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                            height: 1.00,
                          ),
                        );
                      },
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    margin: getMargin(
                      left: 5,
                      top: 26,
                      right: 10,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        getHorizontalSize(
                          16.00,
                        ),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: getPadding(
                            top: 7,
                            bottom: 8,
                          ),
                          child: Text(
                            "Available Balance",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: ColorConstant.black900,
                              fontSize: getFontSize(
                                16,
                              ),
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                              height: 1.00,
                            ),
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 13,
                            top: 8,
                            bottom: 8,
                          ),
                          child: CommonImageView(
                            svgPath: ImageConstant.imgLock,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  physics: BouncingScrollPhysics(),
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 15, horizontal: 0),
                    child: Row(
                      children: [
                        Container(
                          margin: getMargin(left: 5, right: 5),
                          child: ElevatedButton(
                            onPressed: () {
                              OnTapRequestPatronCard();
                            },
                            style: ElevatedButton.styleFrom(
                                fixedSize: Size(100, 125),
                                primary: Colour(0, 100, 254),
                                onPrimary: Colors.white,
                                padding: EdgeInsets.symmetric(
                                    horizontal: 0, vertical: 10),
                                textStyle: TextStyle(
                                  fontFamily: 'Poppins',
                                )),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  margin: getMargin(bottom: 10),
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: CommonImageView(
                                      svgPath: ImageConstant.imgComputer21X29,
                                    ),
                                  ),
                                ),
                                Text(
                                  'Request\nPatron\nCard'.toUpperCase(),
                                  style: TextStyle(fontSize: 14.3),
                                )
                              ],
                            ),
                          ),
                        ),
                        Container(
                          margin: getMargin(left: 5, right: 5),
                          child: ElevatedButton(
                            onPressed: () {
                              OnTapTutionFees();
                            },
                            style: ElevatedButton.styleFrom(
                                fixedSize: Size(100, 125),
                                primary: Colors.white,
                                onPrimary: Colors.black,
                                padding: EdgeInsets.symmetric(
                                    horizontal: 0, vertical: 10),
                                textStyle: TextStyle(
                                  fontFamily: 'Poppins',
                                )),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  margin: getMargin(bottom: 10),
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: CommonImageView(
                                      svgPath: ImageConstant.imgVector,
                                    ),
                                  ),
                                ),
                                Text(
                                  'tuition \nfees'.toUpperCase(),
                                  style: TextStyle(fontSize: 20),
                                )
                              ],
                            ),
                          ),
                        ),
                        Container(
                          margin: getMargin(left: 5, right: 5),
                          child: ElevatedButton(
                            onPressed: () {
                              OnTapAddMoney();
                            },
                            style: ElevatedButton.styleFrom(
                                fixedSize: Size(100, 125),
                                primary: Colors.black,
                                onPrimary: Colors.white,
                                padding: EdgeInsets.symmetric(
                                    horizontal: 0, vertical: 10),
                                textStyle: TextStyle(
                                  fontFamily: 'Poppins',
                                )),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  margin: getMargin(bottom: 10),
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: CommonImageView(
                                      svgPath: ImageConstant.imgPlus,
                                    ),
                                  ),
                                ),
                                Text(
                                  'add \nmoney'.toUpperCase(),
                                  style: TextStyle(fontSize: 20),
                                )
                              ],
                            ),
                          ),
                        ),
                        Container(
                          margin: getMargin(left: 5, right: 5),
                          child: ElevatedButton(
                            onPressed: () {
                              OnTapAddCard();
                            },
                            style: ElevatedButton.styleFrom(
                                fixedSize: Size(100, 125),
                                primary: Colour(0, 100, 254),
                                onPrimary: Colors.white,
                                padding: EdgeInsets.symmetric(
                                    horizontal: 0, vertical: 10),
                                textStyle: TextStyle(
                                  fontFamily: 'Poppins',
                                )),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  margin: getMargin(bottom: 10),
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: CommonImageView(
                                      svgPath: ImageConstant.imgComputer21X29,
                                    ),
                                  ),
                                ),
                                Text(
                                  'add \ncard'.toUpperCase(),
                                  style: TextStyle(fontSize: 20),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: getPadding(
                      left: 5,
                      top: 27,
                      right: 10,
                    ),
                    child: Text(
                      "Card Activity",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: ColorConstant.gray600,
                        fontSize: getFontSize(
                          16,
                        ),
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                        height: 1.00,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: getMargin(top: 15, bottom: 15),
                    decoration: BoxDecoration(
                      color: ColorConstant.whiteA700,
                      borderRadius: BorderRadius.circular(
                        getHorizontalSize(
                          16.00,
                        ),
                      ),
                    ),
                    child: ListView.builder(
                      physics: BouncingScrollPhysics(),
                      scrollDirection: Axis.vertical,
                      itemCount: transactions.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Column(
                          children: [
                            createRow(
                                transactions[index].transaction,
                                transactions[index].date,
                                transactions[index].amount),
                            createLine()
                          ],
                        );
                      },
                    ),
                  ),
                ),
                Container(
                  child: Padding(
                    padding:
                        getPadding(top: 10, bottom: 20, left: 20, right: 20),
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
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget createRow(String transaction, String date, String amount) {
    return Padding(
      padding: getPadding(
        left: 16,
        top: 17,
        right: 7,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  transaction,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: ColorConstant.black900,
                    fontSize: getFontSize(
                      13,
                    ),
                    fontFamily: 'Hiragino Kaku Gothic Pro',
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Padding(
                  padding: getPadding(
                    top: 10,
                    right: 10,
                  ),
                  child: Text(
                    date,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: ColorConstant.bluegray400,
                      fontSize: getFontSize(
                        10,
                      ),
                      fontFamily: 'Hiragino Kaku Gothic Pro',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: getPadding(
              top: 13,
              bottom: 4,
            ),
            child: Text(
              amount,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: TextStyle(
                color: ColorConstant.black900,
                fontSize: getFontSize(
                  15,
                ),
                fontFamily: 'SF Pro Text',
                fontWeight: FontWeight.w400,
                letterSpacing: 0.15,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget createLine() {
    return Container(
      width: double.infinity,
      margin: getMargin(
        left: 1,
        top: 21,
      ),
      decoration: BoxDecoration(
        color: ColorConstant.gray200,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: getVerticalSize(
              1.00,
            ),
            width: getHorizontalSize(
              276.00,
            ),
            margin: getMargin(
              left: 17,
              top: 1,
              right: 16,
            ),
            decoration: BoxDecoration(
              color: ColorConstant.black900,
            ),
          ),
        ],
      ),
    );
  }

  Future<String> getUserName() async {
    SharedPreferences pref = await SharedPreferences.getInstance();

    List list = await DatabaseProvider.db.getUser(pref.getString("number")!);

    return (list[0] as User).name;
  }

  OnTapTutionFees() {
    Get.toNamed(AppRoutes.tutionFeesScreen);
  }

  OnTapAddMoney() {
    Get.toNamed(AppRoutes.addMoneyScreen);
  }

  OnTapAddCard() {
    Get.toNamed(AppRoutes.addCardScreen);
  }

  OnTapSettings(BuildContext context, String page_name) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => SettingsScreen(page_name),
      ),
    );
  }

  OnTapRequestPatronCard() {
    // Get.toNamed(AppRoutes.addCardScreen);
  }
}
