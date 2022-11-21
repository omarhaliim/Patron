import 'package:colour/colour.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:omar_s_application2/core/app_export.dart';
import 'package:omar_s_application2/db/student.dart';
import 'package:omar_s_application2/presentation/verfiy_your_mobile_screen/verfiy_your_mobile_screen.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:omar_s_application2/widgets/progress_bar.dart';
import 'package:omar_s_application2/db/db_provider.dart';

import '../school_pay_later_screen/school_pay_later_screen.dart';
import '../school_pay_later_screen/school_pay_later_screen.dart';

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
                        child: Text("Apply for a loan".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtPoppinsMedium16Black900
                                .copyWith(height: 1.00))),
                    Padding(
                        padding: getPadding(left: 35, top: 45, right: 35),
                        child: Text(
                            "Student Full Name ( As written in government documents )"
                                .tr,
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
                          controller: myControllerStudentName,
                          autocorrect: false,
                          key: StudentNameKey,
                          autovalidateMode: AutovalidateMode.onUserInteraction,
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
                    ),
                    Padding(
                        padding: getPadding(left: 35, top: 45, right: 35),
                        child: Text("Yearly Fees".tr,
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
                    Padding(
                        padding: getPadding(left: 35, top: 45, right: 35),
                        child: Text("Grade".tr,
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
                                  type: AlertType.success,
                                  context: context,
                                  title: "Your loan is processing",
                                  buttons: [
                                    DialogButton(
                                      child: Text(
                                        "DONE",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 20),
                                      ),
                                      onPressed: () => onTapBtnContinue(),
                                      color: Color.fromRGBO(0, 179, 134, 1.0),
                                    ),
                                  ]).show();
                            }
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ))),
    );
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
