import '../../widgets/navigation_bar.dart';
import '../settings_screen/settings_screen.dart';
import 'package:flutter/material.dart';
import 'package:omar_s_application2/core/app_export.dart';
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

  String amount = '0';

  @override
  void initState() {
    super.initState();

    isLocked = true;
    available_balance = "";

    amount = '0';
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
                            IconButton(
                              icon: FaIcon(
                                  color: Colors.white,
                                  FontAwesomeIcons.headset),
                              onPressed: () {
                                OnTapSupport();
                              },
                            ),
                            IconButton(
                              icon: FaIcon(
                                  color: Colors.white, FontAwesomeIcons.gear),
                              onPressed: () {
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
                                  padding: getPadding(left: 25, right: 25),
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
                              child: Text(amount,
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
                                onPressed: () {
                                  setState(() {
                                    onTapDigit(1);
                                  });
                                },
                              ),
                              IconButton(
                                icon: FaIcon(
                                  color: Colors.white,
                                  FontAwesomeIcons.two,
                                ),
                                onPressed: () {
                                  setState(() {
                                    onTapDigit(2);
                                  });
                                },
                              ),
                              IconButton(
                                icon: FaIcon(
                                  color: Colors.white,
                                  FontAwesomeIcons.three,
                                ),
                                onPressed: () {
                                  setState(() {
                                    onTapDigit(3);
                                  });
                                },
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
                                onPressed: () {
                                  setState(() {
                                    onTapDigit(4);
                                  });
                                },
                              ),
                              IconButton(
                                icon: FaIcon(
                                  color: Colors.white,
                                  FontAwesomeIcons.five,
                                ),
                                onPressed: () {
                                  setState(() {
                                    onTapDigit(5);
                                  });
                                },
                              ),
                              IconButton(
                                icon: FaIcon(
                                  color: Colors.white,
                                  FontAwesomeIcons.six,
                                ),
                                onPressed: () {
                                  setState(() {
                                    onTapDigit(6);
                                  });
                                },
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
                                onPressed: () {
                                  setState(() {
                                    onTapDigit(7);
                                  });
                                },
                              ),
                              IconButton(
                                icon: FaIcon(
                                  color: Colors.white,
                                  FontAwesomeIcons.eight,
                                ),
                                onPressed: () {
                                  setState(() {
                                    onTapDigit(8);
                                  });
                                },
                              ),
                              IconButton(
                                icon: FaIcon(
                                  color: Colors.white,
                                  FontAwesomeIcons.nine,
                                ),
                                onPressed: () {
                                  setState(() {
                                    onTapDigit(9);
                                  });
                                },
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              IconButton(
                                icon: FaIcon(
                                  color: Colors.black,
                                  FontAwesomeIcons.circleStop,
                                ),
                                onPressed: () {},
                              ),
                              IconButton(
                                icon: FaIcon(
                                  color: Colors.white,
                                  FontAwesomeIcons.zero,
                                ),
                                onPressed: () {
                                  setState(() {
                                    onTapDigit(0);
                                  });
                                },
                              ),
                              IconButton(
                                icon: FaIcon(
                                  color: Colors.white,
                                  FontAwesomeIcons.arrowLeft,
                                ),
                                onPressed: () {
                                  setState(() {
                                    onTapDigit(-1);
                                  });
                                },
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
                                          width: 3.0,
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
                      NavigationBarWidget(Colors.white)
                    ]),
              ))),
    );
  }

  onTapDigit(int number) {
    if (amount.length < 5 || number == -1) {
      switch (number) {
        case 0:
          if (amount != '0' && amount.length < 5) amount += '0';
          break;
        case 1:
          if (amount == '0')
            amount = '1';
          else
            amount += '1';
          break;
        case 2:
          if (amount == '0')
            amount = '2';
          else
            amount += '2';
          break;
        case 3:
          if (amount == '0')
            amount = '3';
          else
            amount += '3';
          break;
        case 4:
          if (amount == '0')
            amount = '4';
          else
            amount += '4';

          break;
        case 5:
          if (amount == '0')
            amount = '5';
          else
            amount += '5';
          break;
        case 6:
          if (amount == '0')
            amount = '6';
          else
            amount += '6';
          break;
        case 7:
          if (amount == '0')
            amount = '7';
          else
            amount += '7';
          break;
        case 8:
          if (amount == '0')
            amount = '8';
          else
            amount += '8';
          break;
        case 9:
          if (amount == '0')
            amount = '9';
          else
            amount += '9';
          break;
        case -1:
          if (amount != '0') {
            if (amount.length == 1)
              amount = '0';
            else
              amount = amount.substring(0, amount.length - 1);
          }
          break;
      }
    } else {
      showDialog(
          context: context,
          builder: (context) {
            Future.delayed(Duration(seconds: 1), () {
              Navigator.of(context).pop(true);
            });
            return AlertDialog(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              title: Text('Limit Reached.'.toUpperCase(),
                  textAlign: TextAlign.center,
                  style: AppStyle.alertStyle.copyWith(height: 1.00)),
            );
          });
    }
  }

  onTapBtnSend() {
    Alert(
            style: AlertStyle(
                titleStyle: AppStyle.alertStyle.copyWith(height: 1.00)),
            type: AlertType.error,
            context: context,
            title: "Your account has not activated yet!".toUpperCase())
        .show();
  }

  onTapBtnRequest() {
    Alert(
            style: AlertStyle(
                titleStyle: AppStyle.alertStyle.copyWith(height: 1.00)),
            type: AlertType.error,
            context: context,
            title: "Your account has not activated yet!".toUpperCase())
        .show();
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

  OnTapSettings(BuildContext context, String page_name) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => SettingsScreen(page_name, ""),
      ),
    );
  }

  onTapHome() {
    Get.toNamed(AppRoutes.homeScreen);
  }
}
