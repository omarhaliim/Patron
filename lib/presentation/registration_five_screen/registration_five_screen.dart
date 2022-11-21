import 'dart:convert';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../db/user.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:omar_s_application2/core/app_export.dart';
import 'package:colour/colour.dart';
import 'package:omar_s_application2/db/db_provider.dart';
import 'package:country_picker/country_picker.dart';
import 'package:date_format/date_format.dart';
// ignore_for_file: must_be_immutable

class RegistrationFiveScreen extends StatefulWidget {
  late final String FirstName;
  late final String LastName;
  late final String UserName;
  late final String Email;
  late final String Phone;
  late final String Password;

  RegistrationFiveScreen(this.FirstName, this.LastName, this.UserName,
      this.Email, this.Phone, this.Password);

  @override
  State<RegistrationFiveScreen> createState() => _RegistrationFiveScreenState(
      this.FirstName,
      this.LastName,
      this.UserName,
      this.Email,
      this.Phone,
      this.Password);
}

class _RegistrationFiveScreenState extends State<RegistrationFiveScreen> {
  late final String FirstName;
  late final String LastName;
  late final String UserName;
  late final String Email;
  late final String Phone;
  late final String Password;

  _RegistrationFiveScreenState(this.FirstName, this.LastName, this.UserName,
      this.Email, this.Phone, this.Password);

  late String _UserName;
  late String _Phone;
  late String _Country;
  late String _Date;
  late String _StreetAddress;
  late String _City;

  late List<GlobalKey<FormFieldState>> fieldKeys;
  late GlobalKey<FormFieldState> CountryKey;
  late GlobalKey<FormFieldState> CityKey;
  late GlobalKey<FormFieldState> StreetAddressKey;
  late GlobalKey<FormFieldState> DateKey;

  final myControllerCountry = TextEditingController();
  final myControllerCity = TextEditingController();
  final myControllerStreetAddress = TextEditingController();
  final myControllerDataBirth = TextEditingController();

  late String country_name;
  late String APIDate;
  bool AdultFlag = true;
  bool valuefirst = false;

  @override
  void initState() {
    super.initState();

    CountryKey = GlobalKey<FormFieldState>();
    CityKey = GlobalKey<FormFieldState>();
    StreetAddressKey = GlobalKey<FormFieldState>();
    DateKey = GlobalKey<FormFieldState>();
    fieldKeys = [
      CountryKey,
      CityKey,
      StreetAddressKey,
      DateKey,
    ];
  }

  bool validate() {
    return fieldKeys.every((element) => element.currentState!.validate());
  }

  void save() {
    fieldKeys.forEach((element) => element.currentState!.save());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.blueA700,
            body: Container(
                margin: getMargin(left: 15, right: 15),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: getPadding(
                              left: 25, top: 40, right: 25, bottom: 30),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 50,
                                width: 50,
                                child: FloatingActionButton(
                                    backgroundColor: ColorConstant.gray100,
                                    foregroundColor: Colour(0, 100, 254),
                                    onPressed: onTapImgArrowleft,
                                    child: Icon(
                                      Icons.arrow_back_outlined,
                                      size: 30,
                                    )),
                              ),
                              SizedBox(
                                width: 175,
                                child: LinearProgressIndicator(
                                  backgroundColor: Color(0xffabc9f8),
                                  minHeight: 4,
                                  value: 0.8,
                                ),
                              ),
                              SizedBox(
                                width: 50,
                              )
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: SingleChildScrollView(
                          child: Container(
                              decoration: BoxDecoration(
                                color: ColorConstant.whiteA700,
                                borderRadius: BorderRadius.circular(
                                  getHorizontalSize(
                                    16.00,
                                  ),
                                ),
                              ),
                              child:
                                  Stack(alignment: Alignment.center, children: [
                                Align(
                                    alignment: Alignment.topLeft,
                                    child: Container(
                                        height: getVerticalSize(349.00),
                                        width: getHorizontalSize(347.00),
                                        margin: getMargin(bottom: 10),
                                        decoration: BoxDecoration(
                                            color: ColorConstant.whiteA700,
                                            borderRadius: BorderRadius.circular(
                                                getHorizontalSize(16.00))))),
                                Align(
                                    alignment: Alignment.center,
                                    child: Container(
                                        margin: getMargin(
                                            left: 23, top: 22, right: 22),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Padding(
                                                  padding: getPadding(
                                                      left: 31, right: 31),
                                                  child: Text(
                                                      "msg_personal_inform".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtPoppinsMedium22
                                                          .copyWith(
                                                              height: 1.00))),
                                              Align(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Padding(
                                                      padding: getPadding(
                                                          top: 31, right: 10),
                                                      child: Text(
                                                          "lbl_phone_number".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtMontserratSemiBold12
                                                              .copyWith()))),
                                              Container(
                                                margin: getMargin(top: 10),
                                                child: TextFormField(
                                                  enabled: false,
                                                  decoration: InputDecoration(
                                                      hintText: Phone,
                                                      prefixIcon: Container(
                                                          padding: getPadding(
                                                              all: 10),
                                                          margin: getMargin(
                                                              right: 14,
                                                              bottom: 11),
                                                          decoration: BoxDecoration(
                                                              color:
                                                                  ColorConstant
                                                                      .blueA700,
                                                              borderRadius:
                                                                  BorderRadius.circular(
                                                                      getHorizontalSize(
                                                                          5.00))),
                                                          child: CommonImageView(
                                                              svgPath: ImageConstant
                                                                  .imgComputer))),
                                                  textAlign: TextAlign.left,
                                                ),
                                              ),
                                              Align(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Padding(
                                                      padding: getPadding(
                                                          top: 26, right: 10),
                                                      child: Text(
                                                          "msg_country_of_resi"
                                                              .tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtMontserratSemiBold12
                                                              .copyWith()))),
                                              Container(
                                                margin: getMargin(top: 10),
                                                child: TextFormField(
                                                  key: CountryKey,
                                                  autovalidateMode:
                                                      AutovalidateMode
                                                          .onUserInteraction,
                                                  onTap: () {
                                                    showCountryPicker(
                                                      favorite: ['EG'],
                                                      context: context,
                                                      countryFilter: <String>[
                                                        'EG',
                                                        'SA',
                                                        'TN',
                                                        'AE',
                                                        'KW',
                                                        'MA',
                                                        'GB',
                                                        'BH',
                                                        'DZ',
                                                        'JO',
                                                        'LB',
                                                        'QA',
                                                        'OM'
                                                      ],
                                                      onSelect:
                                                          (Country country) {
                                                        country_name =
                                                            country.countryCode;
                                                        myControllerCountry
                                                                .text =
                                                            country.name
                                                                .toString();
                                                        print(country_name);
                                                      },
                                                    );
                                                  },
                                                  validator: (value) {
                                                    if (value == null ||
                                                        value.isEmpty) {
                                                      return 'Country is required';
                                                    }
                                                    return null;
                                                  },
                                                  onSaved: (value) {
                                                    _Country = value!;
                                                  },
                                                  controller:
                                                      myControllerCountry,
                                                  decoration: InputDecoration(
                                                      prefixIcon: Container(
                                                          padding: getPadding(
                                                              all: 10),
                                                          margin: getMargin(
                                                              right: 14,
                                                              bottom: 11),
                                                          decoration: BoxDecoration(
                                                              color:
                                                                  ColorConstant
                                                                      .blueA700,
                                                              borderRadius:
                                                                  BorderRadius.circular(
                                                                      getHorizontalSize(
                                                                          5.00))),
                                                          child: CommonImageView(
                                                              svgPath:
                                                                  ImageConstant
                                                                      .imgGlobe))),
                                                  textAlign: TextAlign.left,
                                                ),
                                              ),
                                              Align(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Padding(
                                                      padding: getPadding(
                                                          top: 26, right: 10),
                                                      child: Text("lbl_city".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtMontserratSemiBold12
                                                              .copyWith()))),
                                              Container(
                                                margin: getMargin(top: 10),
                                                child: TextFormField(
                                                  key: CityKey,
                                                  autovalidateMode:
                                                      AutovalidateMode
                                                          .onUserInteraction,
                                                  validator: (value) {
                                                    if (value == null ||
                                                        value.isEmpty) {
                                                      return 'City is required';
                                                    }
                                                    return null;
                                                  },
                                                  onSaved: (value) {
                                                    _City = value!;
                                                  },
                                                  controller: myControllerCity,
                                                  decoration: InputDecoration(
                                                      prefixIcon: Container(
                                                          padding: getPadding(
                                                              all: 10),
                                                          margin: getMargin(
                                                              right: 14,
                                                              bottom: 11),
                                                          decoration: BoxDecoration(
                                                              color:
                                                                  ColorConstant
                                                                      .blueA700,
                                                              borderRadius:
                                                                  BorderRadius.circular(
                                                                      getHorizontalSize(
                                                                          5.00))),
                                                          child: CommonImageView(
                                                              svgPath: ImageConstant
                                                                  .imgPath41120))),
                                                  textAlign: TextAlign.left,
                                                ),
                                              ),
                                              Align(
                                                  alignment: Alignment
                                                      .centerLeft,
                                                  child: Padding(
                                                      padding: getPadding(
                                                          top: 26, right: 10),
                                                      child: Text(
                                                          "lbl_street_address"
                                                              .tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtMontserratSemiBold12
                                                              .copyWith()))),
                                              Container(
                                                child: TextFormField(
                                                  autovalidateMode:
                                                      AutovalidateMode
                                                          .onUserInteraction,
                                                  key: StreetAddressKey,
                                                  onSaved: (value) {
                                                    _StreetAddress = value!;
                                                  },
                                                  validator: (value) {
                                                    if (value == null ||
                                                        value.isEmpty) {
                                                      return 'Address is required';
                                                    } else {
                                                      return null;
                                                    }
                                                  },
                                                  controller:
                                                      myControllerStreetAddress,
                                                  decoration: InputDecoration(
                                                      prefixIcon: Container(
                                                          padding: getPadding(
                                                              left: 8,
                                                              top: 7,
                                                              right: 8,
                                                              bottom: 8),
                                                          margin: getMargin(
                                                              right: 14,
                                                              bottom: 11),
                                                          decoration: BoxDecoration(
                                                              color:
                                                                  ColorConstant
                                                                      .blueA700,
                                                              borderRadius:
                                                                  BorderRadius.circular(
                                                                      getHorizontalSize(
                                                                          5.00))),
                                                          child: CommonImageView(
                                                              svgPath: ImageConstant
                                                                  .imgLocation))),
                                                  textAlign: TextAlign.left,
                                                ),
                                              ),
                                              Align(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Padding(
                                                      padding: getPadding(
                                                          top: 26, right: 10),
                                                      child: Text(
                                                          "lbl_date_of_birth"
                                                              .tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtMontserratSemiBold12
                                                              .copyWith()))),
                                              Container(
                                                margin: getMargin(top: 10),
                                                child: TextFormField(
                                                  autovalidateMode:
                                                      AutovalidateMode
                                                          .onUserInteraction,
                                                  key: DateKey,
                                                  onSaved: (value) {
                                                    _Date = value!;
                                                  },
                                                  onTap: () async {
                                                    DateTime? date =
                                                        DateTime(1900);
                                                    FocusScope.of(context)
                                                        .requestFocus(
                                                            new FocusNode());

                                                    date = await showDatePicker(
                                                        context: context,
                                                        initialDate:
                                                            DateTime.now(),
                                                        firstDate:
                                                            DateTime(1930),
                                                        lastDate:
                                                            DateTime(2100));
                                                    myControllerDataBirth.text =
                                                        formatDate(date!, [
                                                      yyyy,
                                                      '-',
                                                      mm,
                                                      '-',
                                                      dd
                                                    ]);
                                                    APIDate = formatDate(date, [
                                                      yyyy,
                                                      '-',
                                                      mm,
                                                      '-',
                                                      dd
                                                    ]);
                                                    isAdult(date);
                                                    // myControllerDataBirth.text = date!.toIso8601String();
                                                  },
                                                  validator: (value) {
                                                    if (value == null ||
                                                        value.isEmpty) {
                                                      return 'Birthday is required';
                                                    } else if (AdultFlag ==
                                                        false) {
                                                      return 'You must be older than 16 years old';
                                                    } else {
                                                      return null;
                                                    }
                                                  },
                                                  controller:
                                                      myControllerDataBirth,
                                                  decoration: InputDecoration(
                                                      prefixIcon: Container(
                                                          padding: getPadding(
                                                              left: 8,
                                                              top: 7,
                                                              right: 8,
                                                              bottom: 8),
                                                          margin: getMargin(
                                                              right: 14,
                                                              bottom: 11),
                                                          decoration: BoxDecoration(
                                                              color:
                                                                  ColorConstant
                                                                      .blueA700,
                                                              borderRadius:
                                                                  BorderRadius.circular(
                                                                      getHorizontalSize(
                                                                          5.00))),
                                                          child: CommonImageView(
                                                              svgPath: ImageConstant
                                                                  .imgTicket))),
                                                  textAlign: TextAlign.left,
                                                ),
                                              ),
                                              Align(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Padding(
                                                      padding: getPadding(
                                                          left: 3,
                                                          top: 26,
                                                          right: 10),
                                                      child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .center,
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            // valuefirst
                                                            Checkbox(
                                                                checkColor:
                                                                    Colors
                                                                        .white,
                                                                value:
                                                                    valuefirst,
                                                                onChanged:
                                                                    (bool?
                                                                        value) {
                                                                  setState(() {
                                                                    valuefirst =
                                                                        value!;
                                                                  });
                                                                }),
                                                            // CustomIconButton(
                                                            //     height: 20,
                                                            //     width: 20,
                                                            //     margin:
                                                            //         getMargin(
                                                            //             bottom:
                                                            //                 1),
                                                            //     padding:
                                                            //         IconButtonPadding
                                                            //             .PaddingAll4,
                                                            //     child: CommonImageView(
                                                            //         svgPath:
                                                            //             ImageConstant
                                                            //                 .imgCheckmark)),
                                                            Container(
                                                                margin:
                                                                    getMargin(
                                                                        left:
                                                                            3),
                                                                child: RichText(
                                                                    text: TextSpan(
                                                                        children: [
                                                                          TextSpan(
                                                                              text: "lbl_i_accept".tr,
                                                                              style: TextStyle(color: ColorConstant.gray900, fontSize: getFontSize(16), fontFamily: 'Poppins', fontWeight: FontWeight.w500, height: 1.50)),
                                                                          TextSpan(
                                                                              text: "msg_terms_conditi".tr,
                                                                              style: TextStyle(color: ColorConstant.blueA700, fontSize: getFontSize(16), fontFamily: 'Poppins', fontWeight: FontWeight.w500, height: 1.50)),
                                                                          TextSpan(
                                                                              text: "lbl".tr,
                                                                              style: TextStyle(color: ColorConstant.gray900, fontSize: getFontSize(16), fontFamily: 'Poppins', fontWeight: FontWeight.w500, height: 1.50))
                                                                        ]),
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left))
                                                          ]))),
                                              Align(
                                                alignment: Alignment.center,
                                                child: Padding(
                                                  padding: getPadding(
                                                      top: 20, bottom: 20),
                                                  child: ElevatedButton(
                                                    child: Text('confirm'
                                                        .toUpperCase()),
                                                    onPressed: () async {
                                                      // valuefirst
                                                      if (valuefirst) {
                                                        if (validate()) {
                                                          var response =
                                                              await createUserAPI();
                                                          int statusCode =
                                                              response
                                                                  .statusCode;
                                                          print(statusCode);
                                                          if (statusCode ==
                                                              200) {
                                                            String nym_id =
                                                                jsonDecode(response
                                                                        .body)[
                                                                    'id'];
                                                            createUserDB(
                                                                nym_id);

                                                            SharedPreferences
                                                                pref =
                                                                await SharedPreferences
                                                                    .getInstance();
                                                            pref.setString(
                                                                "number",
                                                                Phone);

                                                            Alert(
                                                                type: AlertType
                                                                    .success,
                                                                context:
                                                                    context,
                                                                title:
                                                                    "Your Patron Card is Ready",
                                                                buttons: [
                                                                  DialogButton(
                                                                    child: Text(
                                                                      "DONE",
                                                                      style: TextStyle(
                                                                          color: Colors
                                                                              .white,
                                                                          fontSize:
                                                                              20),
                                                                    ),
                                                                    onPressed: () =>
                                                                        onTapBtnContinue(),
                                                                    color: Color
                                                                        .fromRGBO(
                                                                            0,
                                                                            179,
                                                                            134,
                                                                            1.0),
                                                                  ),
                                                                ]).show();
                                                          } else {
                                                            Alert(
                                                                    type: AlertType
                                                                        .error,
                                                                    context:
                                                                        context,
                                                                    title:
                                                                        "Error has occured. Please try again!")
                                                                .show();
                                                          }
                                                        }
                                                      } else {
                                                        Alert(
                                                                context:
                                                                    context,
                                                                type: AlertType
                                                                    .error,
                                                                title:
                                                                    "You need to accept the terms and conditions")
                                                            .show();
                                                      }

                                                      save();
                                                    },
                                                    style: ElevatedButton
                                                        .styleFrom(
                                                            primary: Colour(
                                                                0, 100, 254),
                                                            padding: EdgeInsets
                                                                .symmetric(
                                                                    horizontal:
                                                                        85,
                                                                    vertical:
                                                                        7.5),
                                                            textStyle: TextStyle(
                                                                color: Colors
                                                                    .black,
                                                                fontFamily:
                                                                    'Poppins',
                                                                fontSize: 20)),
                                                  ),
                                                ),
                                              ),
                                            ])))
                              ])),
                        ),
                      )
                    ]))));
  }

  onTapImgArrowleft() {
    Get.back();
  }

  onTapBtnContinue() {
    print(FirstName);
    print(LastName);
    print(UserName);
    print(Email);
    print(Phone);
    print(Password);
    Get.toNamed(AppRoutes.homeScreen);
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

  bool isValidNationalId(String number) {
    if (number.length == 0) {
      return false;
    }
    if (number.length < 14 || number.length > 14) {
      return false;
    }
    return true;
  }

  Future<bool> isExistingUser(String UserName) async {
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

  bool isValidUserName(String username) {
    return RegExp(r"^(?=.{4,20}$)(?![_.])(?!.*[_.]{2})[a-zA-Z0-9]+(?<![_.])$")
        .hasMatch(username);
  }

  Future<dynamic> UpdateUserAPI() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    List list = await DatabaseProvider.db.getUser(pref.getString("number")!);
    String nymcardid = (list[0] as User).nymID;
    var response = await http.put(
      Uri.parse('https://api.sand.platform.nymcard.com/v1/users/$nymcardid'),
      headers: <String, String>{
        'apikey': 'tenant64-84tgdd96-2d4f-4834-ab68-8tg751a5c051'
      },
      body: jsonEncode(<String, dynamic>{
        //'nationality': country_name,
        "date_of_birth": APIDate,
        "address": {
          "address_line1": myControllerStreetAddress.text.toString(),
          "city": myControllerCity.text.toString()
        },
      }),
    );
    return response;
  }

  isAdult(DateTime birthDateString) {
    DateTime today = DateTime.now();

    // Date to check but moved 18 years ahead
    DateTime adultDate = DateTime(
      birthDateString.year + 16,
      birthDateString.month,
      birthDateString.day,
    );
    print(adultDate.isBefore(today));
    AdultFlag = adultDate.isBefore(today);
  }

  Future<String> getUserPhone() async {
    SharedPreferences pref = await SharedPreferences.getInstance();

    List list = await DatabaseProvider.db.getUser(pref.getString("number")!);

    return (list[0] as User).phone;
  }

  Future<dynamic> createUserAPI() async {
    var response = await http.post(
      Uri.parse('https://api.sand.platform.nymcard.com/v1/users'),
      headers: <String, String>{
        'apikey': 'tenant64-84tgdd96-2d4f-4834-ab68-8tg751a5c051'
      },
      body: jsonEncode(<String, dynamic>{
        'first_name': FirstName,
        'last_name': LastName,
        'email': Email,
        'mobile': "+2" + Phone,
        "date_of_birth": APIDate,
        "address": {
          "address_line1": myControllerStreetAddress.text.toString(),
          "city": myControllerCity.text.toString()
        },
      }),
    );
    return response;
  }

  Future<User> createUserDB(String nym_id) async {
    User user = User(
        nymID: nym_id,
        name: FirstName + " " + LastName,
        password: Password,
        phone: Phone,
        accountStatus: 'Potential',
        loginStatus: 'SignedOut',
        UserName: UserName);

    return await DatabaseProvider.db.insert(user);
  }
}
