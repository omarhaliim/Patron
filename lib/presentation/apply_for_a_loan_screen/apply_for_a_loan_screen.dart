import 'package:colour/colour.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:omar_s_application2/core/app_export.dart';
import 'package:omar_s_application2/db/student.dart';
import 'package:omar_s_application2/presentation/verfiy_your_mobile_screen/verfiy_your_mobile_screen.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:omar_s_application2/widgets/progress_bar.dart';
import 'package:omar_s_application2/db/db_provider.dart';

import '../school_pay_later_screen/school_pay_later_screen.dart';
import '../school_pay_later_screen/school_pay_later_screen.dart';
import '../settings_screen/settings_screen.dart';

class ApplyForLoanScreen extends StatefulWidget {
  const ApplyForLoanScreen({Key? key}) : super(key: key);

  @override
  State<ApplyForLoanScreen> createState() => _ApplyForLoanScreenState();
}

class _ApplyForLoanScreenState extends State<ApplyForLoanScreen> {
  final myControllerStudentName = TextEditingController();
  final myControllerFees = TextEditingController();
  final myControllerGrade = TextEditingController();

  late String StudentName;
  late String Fees;
  late String Grade;

  late List<GlobalKey<FormFieldState>> fieldKeys;
  late GlobalKey<FormFieldState> StudentNameKey;
  late GlobalKey<FormFieldState> FeesKey;
  late GlobalKey<FormFieldState> GradeKey;

  void initState() {
    super.initState();
    StudentNameKey = GlobalKey<FormFieldState>();
    FeesKey = GlobalKey<FormFieldState>();
    GradeKey = GlobalKey<FormFieldState>();

    fieldKeys = [
      StudentNameKey,
      FeesKey,
      GradeKey,
    ];
  }

  bool validate() {
    return fieldKeys.every((element) => element.currentState!.validate());
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        onTapImgArrowleft();
        return true;
      },
      child: SafeArea(
          child: Scaffold(
              backgroundColor: ColorConstant.gray100,
              body: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Container(
                  margin: getMargin(
                    left: 20,
                    top: 30,
                    right: 20,
                  ),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                    onPressed: onTapImgArrowleft,
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
                                  IconButton(
                                    icon: FaIcon(FontAwesomeIcons.gear),
                                    onPressed: () {
                                      OnTapSettings(
                                          context, "apply_for_a_loan_screen");
                                    },
                                  ),
                                ],
                              )
                            ]),
                        Column(
                          children: [
                            SizedBox(
                              height: 20,
                            ),
                            Text("Apply for a Loan",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtPoppinsMedium32Black900
                                    .copyWith(height: 1.00)),
                            SizedBox(
                              height: 10,
                            ),
                            Text("Enter Student's Information",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtPoppinsMedium16Gray600
                                    .copyWith(height: 1.00)),
                          ],
                        ),
                        Column(
                          children: [
                            Padding(
                                padding:
                                    getPadding(left: 35, top: 45, right: 35),
                                child: Text(
                                    "Student Full Name (As written in government documents)"
                                        .tr,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtPoppinsMedium16Gray9007f
                                        .copyWith(height: 1.00))),
                            Container(
                              width: double.infinity,
                              margin: getMargin(left: 34, top: 3, right: 34),
                              decoration: AppDecoration.outlineGray90059
                                  .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.circleBorder2),
                              child: TextFormField(
                                keyboardType: TextInputType.name,
                                controller: myControllerStudentName,
                                autocorrect: false,
                                key: StudentNameKey,
                                autovalidateMode:
                                    AutovalidateMode.onUserInteraction,
                                inputFormatters: [
                                  LengthLimitingTextInputFormatter(30),
                                ],
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Full Name is required';
                                  } else if (!isValidUName(value)) {
                                    return 'Only letters are allowed';
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
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding:
                                      getPadding(left: 35, top: 45, right: 35),
                                  child: Text("Yearly Fees".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtPoppinsMedium16Gray9007f
                                          .copyWith(height: 1.00))),
                            ),
                            Align(
                                alignment: Alignment.center,
                                child: Container(
                                    width: double.infinity,
                                    margin:
                                        getMargin(left: 34, top: 3, right: 34),
                                    decoration: AppDecoration.outlineGray90059
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .circleBorder2),
                                    child: TextFormField(
                                      keyboardType: TextInputType.number,
                                      controller: myControllerFees,
                                      autocorrect: false,
                                      key: FeesKey,
                                      autovalidateMode:
                                          AutovalidateMode.onUserInteraction,
                                      inputFormatters: [
                                        LengthLimitingTextInputFormatter(25),
                                      ],
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          return 'Fees is required';
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
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding:
                                      getPadding(left: 35, top: 45, right: 35),
                                  child: Text("Grade".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtPoppinsMedium16Gray9007f
                                          .copyWith(height: 1.00))),
                            ),
                            Align(
                                alignment: Alignment.center,
                                child: Container(
                                    width: double.infinity,
                                    margin:
                                        getMargin(left: 34, top: 3, right: 34),
                                    decoration: AppDecoration.outlineGray90059
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .circleBorder2),
                                    child: TextFormField(
                                      keyboardType: TextInputType.number,
                                      controller: myControllerGrade,
                                      autocorrect: false,
                                      key: GradeKey,
                                      autovalidateMode:
                                          AutovalidateMode.onUserInteraction,
                                      inputFormatters: [
                                        LengthLimitingTextInputFormatter(20),
                                      ],
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          return 'Grade is required';
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
                            Align(
                              alignment: Alignment.center,
                              child: Container(
                                margin: getMargin(
                                    left: 34, top: 40, right: 34, bottom: 100),
                                child: ElevatedButton(
                                  child: Text('Apply'.toUpperCase()),
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
                                  onPressed: () {
                                    if (validate()) {
                                      createStudentDB();
                                      myControllerStudentName.clear();
                                      myControllerFees.clear();
                                      myControllerGrade.clear();
                                      Alert(
                                          style: AlertStyle(
                                              titleStyle: AppStyle.alertStyle
                                                  .copyWith(height: 1.00)),
                                          type: AlertType.success,
                                          context: context,
                                          title: "Your loan is processing"
                                              .toUpperCase(),
                                          buttons: [
                                            DialogButton(
                                              child: Text(
                                                "DONE",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 20),
                                              ),
                                              onPressed: () =>
                                                  onTapBtnContinue(),
                                              color: Color.fromRGBO(
                                                  0, 179, 134, 1.0),
                                            ),
                                          ]).show();
                                    }
                                  },
                                ),
                              ),
                            ),
                          ],
                        )
                      ]),
                ),
              ))),
    );
  }

  OnTapSettings(BuildContext context, String page_name) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => SettingsScreen(page_name, ""),
      ),
    );
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

  onTapImgArrowleft() {
    Get.toNamed(AppRoutes.schoolPayLaterScreen);
  }

  onTapBtnContinue() {
    Get.toNamed(AppRoutes.homeScreen);
  }

  bool isValidUName(String name) {
    // return RegExp(r"^(?=[a-zA]{1,20}$)(?!.*[_.]{2})[^_.].*[^_.]$")
    //     .hasMatch(name);

    return RegExp(r"^(?=[a-zA-Z  ]{1,20}$)").hasMatch(name);
  }

  Future<Student> createStudentDB() async {
    Student student = Student(
        student_name: myControllerStudentName.text.toString(),
        fees: myControllerFees.text.toString(),
        grade: myControllerGrade.text.toString());
    return await DatabaseProvider.db.insertStudent(student);
    //return await DatabaseProvider.db.insert(user);
  }
}
