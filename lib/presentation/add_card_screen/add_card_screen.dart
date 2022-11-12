import 'package:rflutter_alert/rflutter_alert.dart';

import '../add_card_screen/widgets/listgroup12715_item_widget.dart';
import '../add_card_screen/widgets/listgroup12715_two_item_widget.dart';
import '../settings_screen/settings_screen.dart';
import 'controller/add_card_controller.dart';
import 'models/listgroup12715_item_model.dart';
import 'models/listgroup12715_two_item_model.dart';
import 'package:flutter/material.dart';
import 'package:omar_s_application2/core/app_export.dart';
import 'package:colour/colour.dart';
import 'package:omar_s_application2/models/card.dart';

class AddCardScreen extends StatefulWidget {
  const AddCardScreen({super.key, required this.user_name});

  final String user_name;

  @override
  State<AddCardScreen> createState() => _AddCardScreenState(this.user_name);
}

class _AddCardScreenState extends State<AddCardScreen> {
  _AddCardScreenState(this.user_name);

  late final String user_name;

  final myControllerCard = TextEditingController();
  final myControllerExp = TextEditingController();
  final myControllerCVV = TextEditingController();

  List<Cards> cards = [];

  @override
  void initState() {
    super.initState();

    Cards c1 = Cards("PREPAID", "4588  0080  8819  9300", "08/28", "888",
        "MOHAMED SHAKER", false);
    Cards c2 = Cards("CREDIT", "4588  0080  8819  9300", "08/28", "888",
        "MOHAMED SHAKER", false);

    cards.add(c1);
    cards.add(c2);
  }

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
                          OnTapSettings(context, "add_card");
                        },
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: getPadding(
                      top: 7,
                      right: 10,
                    ),
                    child: Text(
                      "lbl_add_card2".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtPoppinsMedium32Black900.copyWith(
                        height: 1.00,
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: getPadding(
                      top: 10,
                      right: 10,
                    ),
                    child: Text(
                      "msg_insert_informat".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtPoppinsMedium16Gray600.copyWith(
                        height: 1.00,
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: getMargin(top: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Row(
                        children: [
                          Expanded(
                            flex: 2,
                            child: Container(
                              margin: getMargin(
                                  left: 10, right: 10, top: 10, bottom: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "lbl_card_number".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtPoppinsMedium16Gray9007f
                                        .copyWith(
                                      height: 1.00,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  TextField(
                                    keyboardType: TextInputType.number,
                                    style: TextStyle(height: 1.75),
                                    autocorrect: false,
                                    controller: myControllerCard,
                                    decoration: InputDecoration(
                                      hintText: "16-digit card number",
                                      hintStyle: TextStyle(fontSize: 12.5),
                                      contentPadding: EdgeInsets.symmetric(
                                          vertical: 5, horizontal: 10),
                                      border: OutlineInputBorder(),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Container(
                              margin: getMargin(
                                  left: 10, right: 10, top: 10, bottom: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "lbl_exp".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtPoppinsMedium16Gray9007f
                                        .copyWith(
                                      height: 1.00,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  TextField(
                                    keyboardType: TextInputType.number,
                                    style: TextStyle(height: 1.75),
                                    autocorrect: false,
                                    controller: myControllerExp,
                                    decoration: InputDecoration(
                                      hintText: "MM/YY",
                                      hintStyle: TextStyle(fontSize: 12.5),
                                      contentPadding: EdgeInsets.symmetric(
                                          vertical: 5, horizontal: 10),
                                      border: OutlineInputBorder(),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Container(
                              margin: getMargin(
                                  left: 10, right: 10, top: 10, bottom: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "lbl_cvv".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtPoppinsMedium16Gray9007f
                                        .copyWith(
                                      height: 1.00,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  TextField(
                                    keyboardType: TextInputType.number,
                                    style: TextStyle(height: 1.75),
                                    autocorrect: false,
                                    controller: myControllerCVV,
                                    decoration: InputDecoration(
                                      hintText: "XXX",
                                      hintStyle: TextStyle(fontSize: 12.5),
                                      contentPadding: EdgeInsets.symmetric(
                                          vertical: 5, horizontal: 10),
                                      border: OutlineInputBorder(),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: ElevatedButton(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CommonImageView(
                                svgPath: ImageConstant.imgPlus,
                                height: getSize(
                                  22,
                                ),
                                width: getSize(
                                  22,
                                ),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Text(
                                "lbl_add_new_card".tr.toUpperCase(),
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtPoppinsMedium16.copyWith(
                                  height: 1.00,
                                ),
                              ),
                            ],
                          ),
                          onPressed: () {
                            onTapAddCard();
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colour(0, 100, 254),
                            padding: EdgeInsets.symmetric(
                                horizontal: 85, vertical: 7.5),
                            textStyle: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.vertical,
                    itemCount: cards.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Column(
                        children: [
                          buildCard(
                              cards[index].type,
                              cards[index].number,
                              cards[index].exp,
                              cards[index].cvv,
                              cards[index].holder_name,
                              index)
                        ],
                      );
                    },
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

  Widget buildCard(String type, String number, String exp, String cvv,
      String holder_name, int i) {
    return Stack(
      children: [
        Visibility(
          visible: type.toUpperCase() == "PREPAID",
          child: Align(
            alignment: Alignment.center,
            child: CommonImageView(
              svgPath: ImageConstant.imgGroup12715BlueA700,
            ),
          ),
        ),
        Visibility(
          visible: type.toUpperCase() == "CREDIT",
          child: Align(
            alignment: Alignment.center,
            child: CommonImageView(
              svgPath: ImageConstant.imgGroup12715,
            ),
          ),
        ),
        Container(
          margin: getMargin(top: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "lbl_patron".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtPoppinsExtraBold20.copyWith(),
                  ),
                  SizedBox(
                    width: 100,
                  ),
                  Visibility(
                    visible: type.toUpperCase() == "PREPAID",
                    child: Padding(
                      padding: getPadding(
                        top: 7.5,
                      ),
                      child: Text(
                        "lbl_prepaid_card".tr.toUpperCase(),
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtPoppinsMedium14.copyWith(
                          height: 1.00,
                        ),
                      ),
                    ),
                  ),
                  Visibility(
                    visible: type.toUpperCase() == "CREDIT",
                    child: Padding(
                      padding: getPadding(
                        top: 7.5,
                      ),
                      child: Text(
                        "lbl_credit_card".tr.toUpperCase(),
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtPoppinsMedium14.copyWith(
                          height: 1.00,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Visibility(
                visible: cards[i].isShown,
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      cards[i].isShown = !cards[i].isShown;
                    });
                  },
                  child: Padding(
                    padding: getPadding(top: 10, left: 200),
                    child: CommonImageView(
                      svgPath: ImageConstant.imgEye,
                    ),
                  ),
                ),
              ),
              Visibility(
                visible: !cards[i].isShown,
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      cards[i].isShown = !cards[i].isShown;
                    });
                  },
                  child: Padding(
                    padding: getPadding(top: 10, left: 200),
                    child: CommonImageView(
                      svgPath: ImageConstant.imgEyeclose,
                    ),
                  ),
                ),
              ),
              Visibility(
                visible: cards[i].isShown,
                child: Padding(
                  padding: getPadding(top: 25, right: 85),
                  child: Text(
                    number,
                    style: AppStyle.txtPoppinsRegular10.copyWith(
                      fontSize: 12.5,
                    ),
                  ),
                ),
              ),
              Visibility(
                visible: !cards[i].isShown,
                child: Padding(
                  padding: getPadding(top: 25, right: 85),
                  child: Text(
                    "****   ****  ****  ****".tr,
                    style: AppStyle.txtPoppinsRegular10.copyWith(
                      fontSize: 15,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: getPadding(top: 5, right: 90),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "EXP $exp",
                      style: AppStyle.txtPoppinsRegular10.copyWith(
                        fontSize: 12.5,
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "CVV $cvv",
                      style: AppStyle.txtPoppinsRegular10.copyWith(
                        fontSize: 12.5,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: getPadding(top: 20, right: 80),
                child: Text(
                  holder_name,
                  style: TextStyle(
                      color: Colors.white.withOpacity(0.8), fontSize: 12.5),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  onTapHomeScreen() {
    Get.toNamed(AppRoutes.homeScreen);
  }

  OnTapSettings(BuildContext context, String page_name) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => SettingsScreen(page_name, this.user_name),
      ),
    );
  }

  onTapAddCard() {
    String card_number = myControllerCard.text.toString();
    String exp = myControllerExp.text.toString();
    String CVV = myControllerCVV.text.toString();

    if (!isValidNumber())
      Alert(
              type: AlertType.error,
              context: context,
              title: "Please enter a valid card number.")
          .show();
    else if (!isValidExp())
      Alert(
              type: AlertType.error,
              context: context,
              title: "Please enter a valid expiration date.")
          .show();
    else if (!isValidCVV())
      Alert(
              type: AlertType.error,
              context: context,
              title: "Please enter a valid CVV.")
          .show();
    else {
      Cards c = Cards(
          "PREPAID", refactor(card_number), exp, CVV, this.user_name, false);
      setState(() {
        cards.add(c);
      });

      myControllerExp.clear();
      myControllerCard.clear();
      myControllerCVV.clear();

      Alert(
              type: AlertType.success,
              context: context,
              title: "Card added successfully.")
          .show();
    }
  }

  bool isValidNumber() {
    String card_number = myControllerCard.text.toString();

    if (RegExp(r"^[0-9]+").hasMatch(card_number) && card_number.length == 16)
      return true;
    else
      return false;
  }

  bool isValidExp() {
    String exp = myControllerExp.text.toString();

    if (exp.length == 5 &&
        (exp[2] == '/' || exp[2] == '.' || exp[2] == '-') &&
        RegExp(r"^[0-9]+").hasMatch(exp.substring(0, 2)) &&
        RegExp(r"^[0-9]+").hasMatch(exp.substring(3))) {
      return true;
    }
    return false;
  }

  bool isValidCVV() {
    String CVV = myControllerCVV.text.toString();

    if (RegExp(r"^[0-9]+").hasMatch(CVV) && CVV.length == 3)
      return true;
    else
      return false;
  }

  String refactor(String card_number) {
    String result = "";

    for (int i = 0; i < card_number.length; i++) {
      if (i % 4 == 0 && i > 0) {
        result = result + "   ";
      }
      result = result + card_number[i];
    }
    return result;
  }
}
