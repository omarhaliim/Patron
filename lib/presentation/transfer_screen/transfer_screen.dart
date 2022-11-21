import '../settings_screen/settings_screen.dart';
import 'controller/transfer_controller.dart';
import 'package:flutter/material.dart';
import 'package:omar_s_application2/core/app_export.dart';
import 'package:omar_s_application2/widgets/custom_button.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TransferScreen extends StatefulWidget {
  const TransferScreen({Key? key}) : super(key: key);

  @override
  State<TransferScreen> createState() => _TransferScreenState();
}

class _TransferScreenState extends State<TransferScreen> {
  bool isLocked = true;
  String available_balance = "";

  int amount = 0;

  @override
  void initState() {
    super.initState();

    isLocked = true;
    available_balance = "";

    amount = 0;
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        onTapHome();
        return true;
      },
      child: SafeArea(
          child: Scaffold(
              backgroundColor: ColorConstant.black900,
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
                            GestureDetector(
                              onTap: () {
                                OnTapSupport();
                              },
                              child: CommonImageView(
                                svgPath: ImageConstant.imgCar,
                              ),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            GestureDetector(
                              child: CommonImageView(
                                svgPath: ImageConstant.imgSettings22X22,
                              ),
                              onTap: () {
                                OnTapSettings(context, "transfer");
                              },
                            ),
                          ],
                        ),
                      ),
                      Column(
                        children: [
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding:
                                      getPadding(left: 25, top: 8, right: 25),
                                  child: Text("lbl_transfer".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtPoppinsMedium32WhiteA700
                                          .copyWith(height: 1.00)))),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Container(
                                  margin:
                                      getMargin(left: 24, top: 3, right: 24),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(
                                          getHorizontalSize(16.00))),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Text("msg_available_balan".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtPoppinsMedium16
                                                .copyWith(height: 1.00)),
                                        Visibility(
                                          visible: isLocked,
                                          child: IconButton(
                                            icon: FaIcon(
                                                color: Colors.white,
                                                FontAwesomeIcons.toggleOff),
                                            onPressed: () {
                                              setState(() {
                                                isLocked = false;
                                                available_balance = "00.00 EGP";
                                              });
                                            },
                                          ),
                                        ),
                                        Visibility(
                                          visible: !isLocked,
                                          child: IconButton(
                                            icon: FaIcon(
                                                color: Colors.white,
                                                FontAwesomeIcons.toggleOn),
                                            onPressed: () {
                                              setState(() {
                                                isLocked = true;
                                                available_balance = "";
                                              });
                                            },
                                          ),
                                        ),
                                      ]))),
                          Container(
                            margin: getMargin(left: 25),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                available_balance.toUpperCase(),
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    color: ColorConstant.whiteA700,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: getPadding(
                                top: 20,
                              ),
                              child: Text("lbl_egp".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtPoppinsSemiBold24WhiteA700
                                      .copyWith(height: 1.00)))),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: getPadding(top: 10),
                              child: Text(amount.toString(),
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtPoppinsRegular32WhiteA700
                                      .copyWith(height: 1.00)))),
                      Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              IconButton(
                                icon: FaIcon(
                                  color: Colors.white,
                                  FontAwesomeIcons.one,
                                ),
                                onPressed: () {},
                              ),
                              IconButton(
                                icon: FaIcon(
                                  color: Colors.white,
                                  FontAwesomeIcons.two,
                                ),
                                onPressed: () {},
                              ),
                              IconButton(
                                icon: FaIcon(
                                  color: Colors.white,
                                  FontAwesomeIcons.three,
                                ),
                                onPressed: () {},
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              IconButton(
                                icon: FaIcon(
                                  color: Colors.white,
                                  FontAwesomeIcons.four,
                                ),
                                onPressed: () {},
                              ),
                              IconButton(
                                icon: FaIcon(
                                  color: Colors.white,
                                  FontAwesomeIcons.five,
                                ),
                                onPressed: () {},
                              ),
                              IconButton(
                                icon: FaIcon(
                                  color: Colors.white,
                                  FontAwesomeIcons.six,
                                ),
                                onPressed: () {},
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              IconButton(
                                icon: FaIcon(
                                  color: Colors.white,
                                  FontAwesomeIcons.seven,
                                ),
                                onPressed: () {},
                              ),
                              IconButton(
                                icon: FaIcon(
                                  color: Colors.white,
                                  FontAwesomeIcons.eight,
                                ),
                                onPressed: () {},
                              ),
                              IconButton(
                                icon: FaIcon(
                                  color: Colors.white,
                                  FontAwesomeIcons.nine,
                                ),
                                onPressed: () {},
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              IconButton(
                                icon: FaIcon(
                                  color: Colors.white,
                                  FontAwesomeIcons.circleStop,
                                ),
                                onPressed: () {},
                              ),
                              IconButton(
                                icon: FaIcon(
                                  color: Colors.white,
                                  FontAwesomeIcons.zero,
                                ),
                                onPressed: () {},
                              ),
                              IconButton(
                                icon: FaIcon(
                                  color: Colors.white,
                                  FontAwesomeIcons.arrowLeft,
                                ),
                                onPressed: () {},
                              ),
                            ],
                          ),
                          Container(
                            margin: getMargin(top: 10, bottom: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Expanded(
                                  child: ElevatedButton(
                                    child: Text('Request'.toUpperCase()),
                                    onPressed: () {
                                      onTapBtnRequest();
                                    },
                                    style: ElevatedButton.styleFrom(
                                        side: BorderSide(
                                          width: 1.0,
                                          color: Colors.white,
                                        ),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(20.0),
                                        ),
                                        primary: Colors.black,
                                        onPrimary: Colors.white,
                                        textStyle: TextStyle(
                                            color: Colors.black,
                                            fontFamily: 'Poppins',
                                            fontSize: 20)),
                                  ),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Expanded(
                                  child: ElevatedButton(
                                    child: Text('Send'.toUpperCase()),
                                    onPressed: () {
                                      onTapBtnSend();
                                    },
                                    style: ElevatedButton.styleFrom(
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(20.0),
                                        ),
                                        primary: Colors.white,
                                        onPrimary: Colors.black,
                                        textStyle: TextStyle(
                                            color: Colors.black,
                                            fontFamily: 'Poppins',
                                            fontSize: 20)),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
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
                onTapHome();
              },
              child: CommonImageView(
                svgPath: ImageConstant.imgHome26X24,
              ),
            ),
            GestureDetector(
              onTap: () {
                Get.toNamed(AppRoutes.transferScreen);
              },
              child: CommonImageView(
                svgPath: ImageConstant.imgRefresh29X24,
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
                svgPath: ImageConstant.imgSave21X29,
              ),
            ),
          ],
        ),
      ),
    );
  }

  onTapBtnSend() {
    Alert(
            type: AlertType.error,
            context: context,
            title: "Your account has not activated yet!".toUpperCase())
        .show();
  }

  onTapBtnRequest() {
    Alert(
            type: AlertType.error,
            context: context,
            title: "Your account has not activated yet!".toUpperCase())
        .show();
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

  OnTapSettings(BuildContext context, String page_name) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => SettingsScreen(page_name, ""),
      ),
    );
  }

  void onTapHome() {
    Get.toNamed(AppRoutes.homeScreen);
  }
}
