import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../db/user.dart';
import '../registration_five_screen/widgets/listemailaddress_item_widget.dart';
import 'controller/registration_five_controller.dart';
import 'models/listemailaddress_item_model.dart';
import 'package:flutter/material.dart';
import 'package:omar_s_application2/core/app_export.dart';
import 'package:omar_s_application2/core/utils/validation_functions.dart';
import 'package:omar_s_application2/widgets/custom_button.dart';
import 'package:omar_s_application2/widgets/custom_icon_button.dart';
import 'package:omar_s_application2/widgets/custom_text_form_field.dart';
import 'package:colour/colour.dart';
import 'package:omar_s_application2/db/db_provider.dart';
// import 'package:country_picker/country_picker.dart';
// ignore_for_file: must_be_immutable
class RegistrationFiveScreen extends GetWidget<RegistrationFiveController> {
  //GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final _formKey = GlobalKey<FormState>();

  final myControllerStreetAddress = TextEditingController();
  final myControllerCity = TextEditingController();
  final myControllerCountry = TextEditingController();
  final myControllerDataBirth = TextEditingController();
  final myControllerPhone = TextEditingController();
  final myControllerNationalId = TextEditingController();

  late String value ;



  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.blueA700,
            body: Form(
                key: _formKey,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                child: Container(
                    margin: getMargin(left: 15, right: 15),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: getPadding(left: 25, top: 40, right: 25, bottom: 30),
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
                                  child: Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        Align(
                                            alignment:
                                            Alignment.topLeft,
                                            child: Container(
                                                height:
                                                getVerticalSize(
                                                    349.00),
                                                width:
                                                getHorizontalSize(
                                                    347.00),
                                                margin: getMargin(
                                                    bottom: 10),
                                                decoration: BoxDecoration(
                                                    color: ColorConstant
                                                        .whiteA700,
                                                    borderRadius:
                                                    BorderRadius
                                                        .circular(
                                                        getHorizontalSize(16.00)))))
                                        ,
                                        Align(
                                            alignment:
                                            Alignment.center,
                                            child: Container(
                                                margin: getMargin(
                                                    left: 23,
                                                    top: 22,
                                                    right: 22),
                                                child: Column(
                                                    mainAxisSize:
                                                    MainAxisSize
                                                        .min,
                                                    crossAxisAlignment:
                                                    CrossAxisAlignment
                                                        .center,
                                                    mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .start,
                                                    children: [
                                                      Padding(
                                                          padding: getPadding(
                                                              left:
                                                              31,
                                                              right:
                                                              31),
                                                          child: Text(
                                                              "msg_personal_inform"
                                                                  .tr,
                                                              overflow:
                                                              TextOverflow.ellipsis,
                                                              textAlign: TextAlign.left,
                                                              style: AppStyle.txtPoppinsMedium22.copyWith(height: 1.00))),
                                                      Align(
                                                          alignment:
                                                          Alignment
                                                              .centerLeft,
                                                          child: Padding(
                                                              padding:
                                                              getPadding(top: 31, right: 10),
                                                              child: Text("lbl_phone_number".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtMontserratSemiBold12.copyWith()))),
                                                      CustomTextFormField(

                                                          validator: (value) {
                                                            if (value == null || value.isEmpty) {
                                                              return 'Please enter some text';
                                                            } else if(isValidPhoneNumber(value)==false){
                                                              return 'Please enter a valid mobile number';
                                                            }
                                                            else{
                                                              return null;
                                                            }

                                                          },
                                                          width:
                                                          302,
                                                          focusNode:
                                                          FocusNode(),
                                                          controller:
                                                          myControllerPhone,
                                                          hintText:
                                                          "msg_2_0100_000_000"
                                                              .tr,
                                                          margin: getMargin(
                                                              top:
                                                              9),
                                                          padding:
                                                          TextFormFieldPadding
                                                              .PaddingTB15,
                                                          fontStyle:
                                                          TextFormFieldFontStyle
                                                              .PoppinsMedium16,
                                                          alignment:
                                                          Alignment
                                                              .centerLeft,
                                                          prefix: Container(
                                                              padding: getPadding(
                                                                  left: 10,
                                                                  top: 8,
                                                                  right: 10,
                                                                  bottom: 7),
                                                              margin: getMargin(right: 14, bottom: 11),
                                                              decoration: BoxDecoration(color: ColorConstant.blueA700, borderRadius: BorderRadius.circular(getHorizontalSize(5.00))),
                                                              child: CommonImageView(svgPath: ImageConstant.imgComputer)),
                                                          prefixConstraints: BoxConstraints(minWidth: getSize(14.00), minHeight: getSize(14.00))),
                                                      Align(
                                                          alignment:
                                                          Alignment
                                                              .centerLeft,
                                                          child: Padding(
                                                              padding:
                                                              getPadding(top: 26, right: 10),
                                                              child: Text("lbl_street_address".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtMontserratSemiBold12.copyWith()))),
                                                      CustomTextFormField(
                                                          validator: (value) {
                                                            if (value == null || value.isEmpty) {
                                                              return 'Please enter some text';
                                                            }
                                                            return null;
                                                          },
                                                          width:
                                                          302,
                                                          focusNode:
                                                          FocusNode(),
                                                          controller:
                                                          myControllerStreetAddress,
                                                          hintText:
                                                          "lbl_address"
                                                              .tr,
                                                          margin: getMargin(
                                                              top:
                                                              10),
                                                          alignment:
                                                          Alignment
                                                              .centerLeft,
                                                          prefix: Container(
                                                              padding: getPadding(
                                                                  left: 9,
                                                                  top: 8,
                                                                  right: 9,
                                                                  bottom: 6),
                                                              margin: getMargin(right: 14, bottom: 11),
                                                              decoration: BoxDecoration(color: ColorConstant.blueA700, borderRadius: BorderRadius.circular(getHorizontalSize(5.00))),
                                                              child: CommonImageView(svgPath: ImageConstant.imgLocation)),
                                                          prefixConstraints: BoxConstraints(minWidth: getSize(15.00), minHeight: getSize(15.00))),
                                                      Align(
                                                          alignment:
                                                          Alignment
                                                              .centerLeft,
                                                          child: Padding(
                                                              padding:
                                                              getPadding(top: 26, right: 10),
                                                              child: Text("lbl_city".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtMontserratSemiBold12.copyWith()))),
                                                      CustomTextFormField(
                                                          validator: (value) {
                                                            if (value == null || value.isEmpty) {
                                                              return 'Please enter some text';
                                                            }
                                                            return null;
                                                          },
                                                          width:
                                                          302,
                                                          focusNode:
                                                          FocusNode(),
                                                          controller: myControllerCity,
                                                          hintText:
                                                          "lbl_cairo"
                                                              .tr,
                                                          margin: getMargin(
                                                              top:
                                                              10),
                                                          alignment:
                                                          Alignment
                                                              .centerLeft,
                                                          prefix: Container(
                                                              padding: getPadding(
                                                                  left: 7,
                                                                  top: 7,
                                                                  right: 7,
                                                                  bottom: 9),
                                                              margin: getMargin(right: 14, bottom: 11),
                                                              decoration: BoxDecoration(color: ColorConstant.blueA700, borderRadius: BorderRadius.circular(getHorizontalSize(5.00))),
                                                              child: CommonImageView(svgPath: ImageConstant.imgPath41120)),
                                                          prefixConstraints: BoxConstraints(minWidth: getSize(13.00), minHeight: getSize(13.00))),
                                                      Align(
                                                          alignment:
                                                          Alignment
                                                              .centerLeft,
                                                          child: Padding(
                                                              padding:
                                                              getPadding(top: 26, right: 10),
                                                              child: Text("msg_country_of_resi".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtMontserratSemiBold12.copyWith()))),
                                                      CustomTextFormField(
                                                          validator: (value) {
                                                            if (value == null || value.isEmpty) {
                                                              return 'Please enter some text';
                                                            }
                                                            return null;
                                                          },

                                                          width:
                                                          302,
                                                          focusNode:
                                                          FocusNode(),
                                                          controller:
                                                          myControllerCountry,
                                                          hintText:
                                                          "lbl_egypt"
                                                              .tr,
                                                          margin: getMargin(
                                                              top:
                                                              10),
                                                          alignment:
                                                          Alignment
                                                              .centerLeft,
                                                          prefix: Container(
                                                              padding:
                                                              getPadding(all: 8),
                                                              margin: getMargin(right: 14, bottom: 11),
                                                              decoration: BoxDecoration(color: ColorConstant.blueA700, borderRadius: BorderRadius.circular(getHorizontalSize(5.00))),
                                                              child: CommonImageView(svgPath: ImageConstant.imgGlobe)),
                                                          prefixConstraints: BoxConstraints(minWidth: getSize(14.00), minHeight: getSize(14.00))),
                                                      Align(
                                                          alignment:
                                                          Alignment
                                                              .centerLeft,
                                                          child: Padding(
                                                              padding:
                                                              getPadding(top: 26, right: 10),
                                                              child: Text("lbl_date_of_birth".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtMontserratSemiBold12.copyWith()))),
                                                      CustomTextFormField(
                                                          validator: (value) {
                                                            if (value == null || value.isEmpty) {
                                                              return 'Please enter some text';
                                                            }
                                                            return null;
                                                          },
                                                          width:
                                                          302,
                                                          focusNode:
                                                          FocusNode(),
                                                          controller:
                                                          controller
                                                              .dateController,
                                                          hintText:
                                                          "lbl_08_08_1993"
                                                              .tr,
                                                          margin: getMargin(
                                                              top:
                                                              10),
                                                          alignment:
                                                          Alignment
                                                              .centerLeft,
                                                          prefix: Container(
                                                              padding: getPadding(
                                                                  left: 8,
                                                                  top: 7,
                                                                  right: 8,
                                                                  bottom: 8),
                                                              margin: getMargin(right: 14, bottom: 11),
                                                              decoration: BoxDecoration(color: ColorConstant.blueA700, borderRadius: BorderRadius.circular(getHorizontalSize(5.00))),
                                                              child: CommonImageView(svgPath: ImageConstant.imgTicket)),
                                                          prefixConstraints: BoxConstraints(minWidth: getSize(15.00), minHeight: getSize(15.00))),
                                                      Align(
                                                          alignment:
                                                          Alignment
                                                              .centerLeft,
                                                          child: Padding(
                                                              padding:
                                                              getPadding(top: 26, right: 10),
                                                              child: Text("lbl_document_id".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtMontserratSemiBold12.copyWith()))),
                                                      CustomTextFormField(
                                                          validator: (value) {
                                                            if (value == null || value.isEmpty) {
                                                              return 'Please enter some text';
                                                            } else if(isValidNationalId(value)==false){
                                                              return 'Please enter a valid National Id';
                                                            }
                                                            else{
                                                              return null;
                                                            }

                                                          },
                                                          width:
                                                          302,
                                                          focusNode:
                                                          FocusNode(),
                                                          controller:
                                                          myControllerNationalId,
                                                          hintText:
                                                          "lbl_29308082108008"
                                                              .tr,
                                                          margin: getMargin(
                                                              top:
                                                              10),
                                                          textInputAction:
                                                          TextInputAction
                                                              .done,
                                                          alignment:
                                                          Alignment
                                                              .centerLeft,
                                                          prefix: Container(
                                                              padding: getPadding(
                                                                  left: 9,
                                                                  top: 8,
                                                                  right: 9,
                                                                  bottom: 8),
                                                              margin: getMargin(right: 14, bottom: 11),
                                                              decoration: BoxDecoration(color: ColorConstant.blueA700, borderRadius: BorderRadius.circular(getHorizontalSize(5.00))),
                                                              child: CommonImageView(svgPath: ImageConstant.imgComputer14X12)),
                                                          prefixConstraints: BoxConstraints(minWidth: getSize(14.00), minHeight: getSize(14.00))),
                                                      Align(
                                                          alignment:
                                                          Alignment.centerLeft,
                                                          child: Padding(
                                                              padding: getPadding(left: 3, top: 26, right: 10),
                                                              child: Row(mainAxisAlignment: MainAxisAlignment.start, crossAxisAlignment: CrossAxisAlignment.center, mainAxisSize: MainAxisSize.max, children: [
                                                                CustomIconButton(height: 20, width: 20, margin: getMargin(bottom: 1), padding: IconButtonPadding.PaddingAll4, child: CommonImageView(svgPath: ImageConstant.imgCheckmark)),
                                                                Container(
                                                                    margin: getMargin(left: 25),
                                                                    child: RichText(
                                                                        text: TextSpan(children: [
                                                                          TextSpan(text: "lbl_i_accept".tr, style: TextStyle(color: ColorConstant.gray900, fontSize: getFontSize(16), fontFamily: 'Poppins', fontWeight: FontWeight.w500, height: 1.50)),
                                                                          TextSpan(text: "msg_terms_conditi".tr, style: TextStyle(color: ColorConstant.blueA700, fontSize: getFontSize(16), fontFamily: 'Poppins', fontWeight: FontWeight.w500, height: 1.50)),
                                                                          TextSpan(text: "lbl".tr, style: TextStyle(color: ColorConstant.gray900, fontSize: getFontSize(16), fontFamily: 'Poppins', fontWeight: FontWeight.w500, height: 1.50))
                                                                        ]),
                                                                        textAlign: TextAlign.left))
                                                              ]))),
                                                      Align(
                                                        alignment: Alignment.center,
                                                        child: Padding(
                                                          padding: getPadding( top: 20 , bottom: 20),
                                                          child: ElevatedButton(
                                                            child: Text('confirm'.toUpperCase()),
                                                            onPressed: () async {
                                                              SharedPreferences pref = await SharedPreferences.getInstance();
                                                              String? x = pref.getString("number");
                                                              if(x==myControllerPhone.text.toString())
                                                              {
                                                                if(_formKey.currentState!.validate())
                                                                {
                                                                  Alert(
                                                                    context: context,
                                                                    type: AlertType.success,
                                                                    title:
                                                                    "Your Patron Card will be ready soon!",
                                                                    buttons: [
                                                                      DialogButton(
                                                                        child: Text(
                                                                          "OK",
                                                                          style: TextStyle(
                                                                              color: Colors.white, fontSize: 20),
                                                                        ),
                                                                        onPressed: (){

                                                                          setUserStatusPending();

                                                                          Get.toNamed(AppRoutes.homeScreen);
                                                                        },
                                                                        color: Colour(0, 100, 254),
                                                                      ),

                                                                    ],
                                                                  ).show();

                                                                }
                                                                else
                                                                {
                                                                  Alert(
                                                                      type: AlertType.error,
                                                                      context: context,
                                                                      title:
                                                                      "All Fields are required.")
                                                                      .show();
                                                                }
                                                              }
                                                              else
                                                              {
                                                                Alert(
                                                                    type: AlertType.error,
                                                                    context: context,
                                                                    title:
                                                                    "Please Enter Your Registered Number.")
                                                                    .show();
                                                              }

                                                            },
                                                            style: ElevatedButton.styleFrom(
                                                                primary: Colour(0, 100, 254),
                                                                padding: EdgeInsets.symmetric(
                                                                    horizontal: 85, vertical: 7.5),
                                                                textStyle: TextStyle(
                                                                    color: Colors.black,
                                                                    fontFamily: 'Poppins',
                                                                    fontSize: 20)),
                                                          ),
                                                        ),
                                                      ),

                                                    ])))
                                      ])
                              ),
                            ),
                          )
                        ])))));
  }

  onTapImgArrowleft() {
    Get.back();
  }
  onTapBtnContinue() {
    Get.toNamed(AppRoutes.createPinCodeScreen);
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



  Future<void> setUserStatusPending() async {
    SharedPreferences pref = await SharedPreferences.getInstance();

    List list = await DatabaseProvider.db.getUser(pref.getString("number")!);

    (list[0] as User).accountStatus = "Pending";

    await DatabaseProvider.db.update(list[0] as User);
  }
}

