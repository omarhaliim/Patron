import 'dart:io';

import 'package:flutter/material.dart';
import 'package:omar_s_application2/core/app_export.dart';
import 'package:colour/colour.dart';
import 'package:omar_s_application2/db/db_provider.dart';
import 'package:omar_s_application2/models/transactions.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:omar_s_application2/db/user.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        exit(0);
      },
      child: SafeArea(
        child: Scaffold(
          backgroundColor: ColorConstant.gray100,
          body: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: getMargin(
                    left: 20,
                    top: 30,
                    right: 20,
                  ),
                  child: Column(
                    // mainAxisSize: MainAxisSize.min,
                    // mainAxisAlignment: MainAxisAlignment.start,
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
                              height: getSize(
                                20.00,
                              ),
                              width: getSize(
                                20.00,
                              ),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            GestureDetector(
                              child: CommonImageView(
                                svgPath: ImageConstant.imgSettings,
                                height: getSize(
                                  22.00,
                                ),
                                width: getSize(
                                  22.00,
                                ),
                              ),
                              onTap: OnTapSettings,
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
                                  height: getVerticalSize(
                                    16.00,
                                  ),
                                  width: getHorizontalSize(
                                    29.00,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 15, horizontal: 0),
                        child: Row(
                          children: [
                            Expanded(
                              child: Container(
                                margin: getMargin(left: 10, right: 10),
                                child: ElevatedButton(
                                  onPressed: () {
                                    OnTapTutionFees();
                                  },
                                  style: ElevatedButton.styleFrom(
                                      primary: Colors.white,
                                      onPrimary: Colors.black,
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 0, vertical: 15),
                                      textStyle: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: 20,
                                      )),
                                  child: Column(
                                    children: [
                                      Container(
                                        margin: getMargin(left: 20, bottom: 10),
                                        child: Align(
                                          alignment: Alignment.centerLeft,
                                          child: CommonImageView(
                                            svgPath: ImageConstant.imgVector,
                                            height: getVerticalSize(
                                              30.00,
                                            ),
                                            width: getHorizontalSize(
                                              30.00,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Text('tution \nfees'.toUpperCase())
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                margin: getMargin(left: 10, right: 10),
                                child: ElevatedButton(
                                  onPressed: () {
                                    OnTapAddMoney();
                                  },
                                  style: ElevatedButton.styleFrom(
                                      primary: Colors.black,
                                      onPrimary: Colors.white,
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 0, vertical: 15),
                                      textStyle: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: 20,
                                      )),
                                  child: Column(
                                    children: [
                                      Container(
                                        margin: getMargin(left: 20, bottom: 10),
                                        child: Align(
                                          alignment: Alignment.centerLeft,
                                          child: CommonImageView(
                                            svgPath: ImageConstant.imgPlus,
                                            height: getVerticalSize(
                                              30.00,
                                            ),
                                            width: getHorizontalSize(
                                              30.00,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Text('add \nmoney'.toUpperCase())
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                margin: getMargin(left: 10, right: 10),
                                child: ElevatedButton(
                                  onPressed: () {
                                    OnTapAddCard();
                                  },
                                  style: ElevatedButton.styleFrom(
                                      primary: Colour(0, 100, 254),
                                      onPrimary: Colors.white,
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 0, vertical: 15),
                                      textStyle: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: 20,
                                      )),
                                  child: Column(
                                    children: [
                                      Container(
                                        margin: getMargin(left: 25, bottom: 10),
                                        child: Align(
                                          alignment: Alignment.centerLeft,
                                          child: CommonImageView(
                                            svgPath:
                                                ImageConstant.imgComputer21X29,
                                            height: getVerticalSize(
                                              30.00,
                                            ),
                                            width: getHorizontalSize(
                                              30.00,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Text('add \ncard'.toUpperCase())
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
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
                      Container(
                        // height: double.infinity,
                        width: double.infinity,
                        margin: getMargin(
                          top: 13,
                          right: 3,
                          left: 3,
                        ),
                        decoration: BoxDecoration(
                          color: ColorConstant.whiteA700,
                          borderRadius: BorderRadius.circular(
                            getHorizontalSize(
                              16.00,
                            ),
                          ),
                        ),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.vertical,
                          physics: BouncingScrollPhysics(),
                          child: Column(
                            // mainAxisSize: MainAxisSize.min,
                            // crossAxisAlignment: CrossAxisAlignment.center,
                            // mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              createRow('Transfer to Ahmed', '2022.05.04',
                                  '-2500 EGP'),
                              createLine(),
                              createRow('Transfer to Ahmed', '2022.05.04',
                                  '-2500 EGP'),
                              createLine(),
                              createRow('Transfer to Ahmed', '2022.05.04',
                                  '-2500 EGP'),
                              createLine(),
                              createRow('Transfer to Ahmed', '2022.05.04',
                                  '-2500 EGP'),
                              createLine(),
                              createRow('Transfer to Ahmed', '2022.05.04',
                                  '-2500 EGP'),
                              createLine(),
                              createRow('Transfer to Ahmed', '2022.05.04',
                                  '-2500 EGP'),
                              createLine(),
                              createRow('Transfer to Ahmed', '2022.05.04',
                                  '-2500 EGP'),
                              createLine(),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(
                        getHorizontalSize(
                          20.00,
                        ),
                      ),
                      topRight: Radius.circular(
                        getHorizontalSize(
                          20.00,
                        ),
                      ),
                    ),
                  ),
                  child: Padding(
                    padding: getPadding(
                      top: 27,
                      bottom: 27,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: getPadding(
                            top: 2,
                            bottom: 2,
                          ),
                          child: CommonImageView(
                            svgPath: ImageConstant.imgHome,
                            height: getVerticalSize(
                              26.00,
                            ),
                            width: getHorizontalSize(
                              24.00,
                            ),
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            top: 1,
                            bottom: 1,
                          ),
                          child: CommonImageView(
                            svgPath: ImageConstant.imgRefresh,
                            height: getVerticalSize(
                              29.00,
                            ),
                            width: getHorizontalSize(
                              24.00,
                            ),
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            top: 5,
                            bottom: 5,
                          ),
                          child: CommonImageView(
                            svgPath: ImageConstant.imgSave,
                            height: getVerticalSize(
                              21.00,
                            ),
                            width: getHorizontalSize(
                              29.00,
                            ),
                          ),
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

  OnTapSettings() {
    Get.toNamed(AppRoutes.settingsScreen);
  }
}
