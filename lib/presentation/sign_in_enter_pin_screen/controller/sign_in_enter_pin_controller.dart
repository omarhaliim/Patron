import '/core/app_export.dart';
import 'package:omar_s_application2/presentation/sign_in_enter_pin_screen/models/sign_in_enter_pin_model.dart';
import 'package:sms_autofill/sms_autofill.dart';
import 'package:flutter/material.dart';

class SignInEnterPinController extends GetxController with CodeAutoFill {
  Rx<TextEditingController> otpController = TextEditingController().obs;

  Rx<SignInEnterPinModel> signInEnterPinModelObj = SignInEnterPinModel().obs;

  @override
  void codeUpdated() {
    otpController.value.text = code!;
  }

  @override
  void onInit() {
    super.onInit();
    listenForCode();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
