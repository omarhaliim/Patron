import 'package:colour/colour.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:omar_s_application2/core/app_export.dart';
import 'package:omar_s_application2/presentation/verfiy_your_mobile_screen/verfiy_your_mobile_screen.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:omar_s_application2/widgets/progress_bar.dart';
import 'package:omar_s_application2/db/db_provider.dart';

class CreateAnAccountScreen extends StatefulWidget {
  const CreateAnAccountScreen({Key? key}) : super(key: key);

  @override
  State<CreateAnAccountScreen> createState() => _CreateAnAccountScreenState();
}

class _CreateAnAccountScreenState extends State<CreateAnAccountScreen> {
  final myControllerFirstName = TextEditingController();
  final myControllerLastName = TextEditingController();
  final myControllerUserName = TextEditingController();
  final myControllerEmail = TextEditingController();
  final myControllerEmail2 = TextEditingController();
  final myControllerPhone = TextEditingController();

  late String FirstName;
  late String LastName;
  late String UserName;
  late String Email;
  late String Phone;

  late List<GlobalKey<FormFieldState>> fieldKeys;
  late GlobalKey<FormFieldState> FirstNameKey;
  late GlobalKey<FormFieldState> LastNameKey;
  late GlobalKey<FormFieldState> UserNameKey;
  late GlobalKey<FormFieldState> EmailKey;
  late GlobalKey<FormFieldState> EmailKey2;
  late GlobalKey<FormFieldState> PhoneKey;

  void initState() {
    super.initState();
    FirstNameKey = GlobalKey<FormFieldState>();
    LastNameKey = GlobalKey<FormFieldState>();
    UserNameKey = GlobalKey<FormFieldState>();
    EmailKey = GlobalKey<FormFieldState>();
    EmailKey2 = GlobalKey<FormFieldState>();
    PhoneKey = GlobalKey<FormFieldState>();
    fieldKeys = [
      FirstNameKey,
      LastNameKey,
      UserNameKey,
      EmailKey,
      EmailKey2,
      PhoneKey
    ];
  }

  bool validate() {
    return fieldKeys.every((element) => element.currentState!.validate());
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        Get.toNamed(AppRoutes.startScreen);
        return true;
      },
      child: SafeArea(
          child: Scaffold(
              backgroundColor: ColorConstant.gray100,
              body: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ProgressBar(
                      progress_indicator: 0.2,
                      callback: onTapImgArrowleft,
                    ),
                    Padding(
                        padding: getPadding(left: 35, right: 35),
                        child: Text("msg_create_an_accou".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtPoppinsMedium16Black900
                                .copyWith(height: 1.00))),
                    Padding(
                        padding: getPadding(left: 35, top: 45, right: 35),
                        child: Text("First Name".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtPoppinsMedium16Gray9007f
                                .copyWith(height: 1.00))),
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        width: double.infinity,
                        margin: getMargin(left: 34, top: 3, right: 34),
                        decoration: AppDecoration.outlineGray90059.copyWith(
                            borderRadius: BorderRadiusStyle.circleBorder2),
                        child: TextFormField(
                          keyboardType: TextInputType.name,
                          controller: myControllerFirstName,
                          autocorrect: false,
                          key: FirstNameKey,
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(20),
                          ],
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'First Name is required';
                            } else if (!isValidUName(value)) {
                              return 'Only Letters are allowed';
                            } else {
                              return null;
                            }
                          },
                          textAlign: TextAlign.left,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 5, horizontal: 10),
                            //border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                        padding: getPadding(left: 35, top: 45, right: 35),
                        child: Text("Last Name".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtPoppinsMedium16Gray9007f
                                .copyWith(height: 1.00))),
                    Align(
                        alignment: Alignment.center,
                        child: Container(
                            width: double.infinity,
                            margin: getMargin(left: 34, top: 3, right: 34),
                            decoration: AppDecoration.outlineGray90059.copyWith(
                                borderRadius: BorderRadiusStyle.circleBorder2),
                            child: TextFormField(
                              keyboardType: TextInputType.name,
                              controller: myControllerLastName,
                              autocorrect: false,
                              key: LastNameKey,
                              autovalidateMode:
                                  AutovalidateMode.onUserInteraction,
                              inputFormatters: [
                                LengthLimitingTextInputFormatter(20),
                              ],
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Last Name is required';
                                } else if (!isValidUName(value)) {
                                  return 'Only Letters are allowed';
                                } else {
                                  return null;
                                }
                              },
                              textAlign: TextAlign.left,
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.symmetric(
                                    vertical: 5, horizontal: 10),
                                border: OutlineInputBorder(),
                              ),
                            ))),
                    Padding(
                        padding: getPadding(left: 35, top: 45, right: 35),
                        child: Text("Username".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtPoppinsMedium16Gray9007f
                                .copyWith(height: 1.00))),
                    Align(
                        alignment: Alignment.center,
                        child: Container(
                            width: double.infinity,
                            margin: getMargin(left: 34, top: 3, right: 34),
                            decoration: AppDecoration.outlineGray90059.copyWith(
                                borderRadius: BorderRadiusStyle.circleBorder2),
                            child: TextFormField(
                              controller: myControllerUserName,
                              autocorrect: false,
                              key: UserNameKey,
                              autovalidateMode:
                                  AutovalidateMode.onUserInteraction,
                              inputFormatters: [
                                LengthLimitingTextInputFormatter(20),
                              ],
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Username is required';
                                } else if (!isValidUserName(value)) {
                                  return 'Only letters and numbers are allowed.';
                                } else {
                                  return null;
                                }
                              },
                              textAlign: TextAlign.left,
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.symmetric(
                                    vertical: 5, horizontal: 10),
                                border: OutlineInputBorder(),
                              ),
                            ))),
                    Padding(
                        padding: getPadding(left: 35, top: 47, right: 35),
                        child: Text("lbl_email".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtPoppinsMedium16Gray9007f
                                .copyWith(height: 1.00))),
                    Align(
                        alignment: Alignment.center,
                        child: Container(
                            width: double.infinity,
                            margin: getMargin(left: 34, top: 4, right: 34),
                            decoration: AppDecoration.outlineGray90059.copyWith(
                                borderRadius: BorderRadiusStyle.circleBorder2),
                            child: TextFormField(
                              keyboardType: TextInputType.emailAddress,
                              controller: myControllerEmail,
                              autocorrect: false,
                              key: EmailKey,
                              autovalidateMode:
                                  AutovalidateMode.onUserInteraction,
                              inputFormatters: [
                                LengthLimitingTextInputFormatter(30),
                              ],
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Email is required';
                                } else if (!isValidEmail(value)) {
                                  return 'Not Valid Email Format';
                                } else {
                                  return null;
                                }
                              },
                              textAlign: TextAlign.left,
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.symmetric(
                                    vertical: 5, horizontal: 10),
                                //border: OutlineInputBorder(),
                              ),
                            ))),
                    Padding(
                        padding: getPadding(left: 35, top: 47, right: 35),
                        child: Text("Re-write You Email".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtPoppinsMedium16Gray9007f
                                .copyWith(height: 1.00))),
                    Align(
                        alignment: Alignment.center,
                        child: Container(
                            width: double.infinity,
                            margin: getMargin(left: 34, top: 4, right: 34),
                            decoration: AppDecoration.outlineGray90059.copyWith(
                                borderRadius: BorderRadiusStyle.circleBorder2),
                            child: TextFormField(
                              keyboardType: TextInputType.emailAddress,
                              controller: myControllerEmail2,
                              autocorrect: false,
                              key: EmailKey2,
                              autovalidateMode:
                                  AutovalidateMode.onUserInteraction,
                              inputFormatters: [
                                LengthLimitingTextInputFormatter(30),
                              ],
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Email is required';
                                } else if (!isMatching(
                                    myControllerEmail.text.toString(),
                                    myControllerEmail2.text.toString())) {
                                  return 'The Email is not matching';
                                } else {
                                  return null;
                                }
                              },
                              textAlign: TextAlign.left,
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.symmetric(
                                    vertical: 5, horizontal: 10),
                                //border: OutlineInputBorder(),
                              ),
                            ))),
                    Padding(
                        padding: getPadding(left: 35, top: 47, right: 35),
                        child: Text("lbl_mobile".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtPoppinsMedium16Gray9007f
                                .copyWith(height: 1.00))),
                    Align(
                        alignment: Alignment.center,
                        child: Container(
                            width: double.infinity,
                            margin: getMargin(left: 34, top: 4, right: 34),
                            decoration: AppDecoration.outlineGray90059.copyWith(
                                borderRadius: BorderRadiusStyle.circleBorder2),
                            child: TextFormField(
                              keyboardType: TextInputType.number,
                              controller: myControllerPhone,
                              autocorrect: false,
                              key: PhoneKey,
                              autovalidateMode:
                                  AutovalidateMode.onUserInteraction,
                              inputFormatters: [
                                LengthLimitingTextInputFormatter(30),
                              ],
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Phone number is required';
                                } else if (!isValidPhoneNumber(value)) {
                                  return 'Enter Valid Mobile Number';
                                } else {
                                  return null;
                                }
                              },
                              decoration: InputDecoration(
                                hintText: 'ex: 01xxxxxxxxx',
                                contentPadding: EdgeInsets.symmetric(
                                    vertical: 5, horizontal: 10),
                                border: OutlineInputBorder(),
                              ),
                            ))),
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        margin: getMargin(
                            left: 34, top: 40, right: 34, bottom: 100),
                        child: ElevatedButton(
                          child: Text('continue'.toUpperCase()),
                          onPressed: () async {
                            FirstName = myControllerFirstName.text.toString();
                            LastName = myControllerLastName.text.toString();
                            UserName = myControllerUserName.text.toString();
                            Email = myControllerEmail.text.toString();
                            Phone = myControllerPhone.text.toString();

                            if (validate()) {
                              if (await isExistingUserName(UserName)) {
                                myControllerUserName.clear();
                                Alert(
                                        type: AlertType.error,
                                        context: context,
                                        title: " Username is already taken")
                                    .show();
                              } else if (await isExistingUser(Phone)) {
                                Alert(
                                  context: context,
                                  type: AlertType.error,
                                  title:
                                      "This mobile number is already registered. Sign in now?",
                                  buttons: [
                                    DialogButton(
                                      child: Text(
                                        "SIGN IN",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 20),
                                      ),
                                      onPressed: () => onTapBtnSignIn(),
                                      color: Color.fromRGBO(0, 179, 134, 1.0),
                                    ),
                                    DialogButton(
                                      child: Text(
                                        "CANCEL",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 20),
                                      ),
                                      onPressed: () => Navigator.pop(context),
                                      gradient: LinearGradient(colors: [
                                        Color.fromRGBO(116, 116, 191, 1.0),
                                        Color.fromRGBO(52, 138, 199, 1.0)
                                      ]),
                                    )
                                  ],
                                ).show();
                              } else {
                                myControllerFirstName.clear();
                                myControllerLastName.clear();
                                myControllerUserName.clear();
                                myControllerEmail.clear();
                                myControllerEmail2.clear();
                                myControllerPhone.clear();
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        VerfiyYourMobileScreen(
                                            FirstName,
                                            LastName,
                                            UserName,
                                            Email,
                                            Phone,
                                            "Create"),
                                  ),
                                );
                              }
                            }
                          },
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
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
                    ),
                  ],
                ),
              ))),
    );
  }

  onTapImgArrowleft() {
    Get.toNamed(AppRoutes.startScreen);
  }

  onTapBtnContinue() {
    Get.toNamed(AppRoutes.verfiyYourMobileScreen);
  }

  onTapBtnSignIn() {
    Get.toNamed(AppRoutes.signInScreen);
  }

  bool isValidEmail(String email) {
    return RegExp(
            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(email);
  }

  bool isValidPhoneNumber(String number) {
    if (number.length == 0) {
      return false;
    }
    if (number.length < 11 || number.length > 11) {
      return false;
    }
    if (number.length >= 3) {
      if ('${number[0]}' != '0') {
        return false;
      }
      if ('${number[1]}' != '1') {
        return false;
      }

      if ('${number[2]}' != '0' &&
          '${number[2]}' != '1' &&
          '${number[2]}' != '2' &&
          '${number[2]}' != '5') {
        return false;
      }
    }
    return true;
  }

  Future<bool> isExistingUser(String number) async {
    List list = await DatabaseProvider.db.getUser(number);

    if (list.length >= 1)
      return true;
    else
      return false;
  }

  bool isValidUName(String name) {
    // return RegExp(r"^(?=[a-zA]{1,20}$)(?!.*[_.]{2})[^_.].*[^_.]$")
    //     .hasMatch(name);

    return RegExp(r"^(?=[a-zA-Z  ]{1,20}$)").hasMatch(name);
  }

  // a-zA-Z]

  bool isValidUserName(String username) {
    return RegExp(r"^(?=.{4,20}$)(?![_.])(?!.*[_.]{2})[a-zA-Z0-9]+(?<![_.])$")
        .hasMatch(username);
  }

  bool isMatching(String one, String two) {
    if (one == two)
      return true;
    else
      return false;
  }

  Future<bool> isExistingUserName(String UserName) async {
    List list = await DatabaseProvider.db.getUserName(UserName);
    if (list.length >= 1) {
      //
      // print("true");
      return true;
    } else {
      // print("false");
      return false;
    }
  }
}
