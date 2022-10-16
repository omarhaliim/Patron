import '/core/app_export.dart';
import 'package:omar_s_application2/presentation/create_pin_code_screen/models/create_pin_code_model.dart';
import 'package:flutter/material.dart';

class CreatePinCodeController extends GetxController {
  TextEditingController oneController = TextEditingController();

  TextEditingController sevenController = TextEditingController();

  Rx<CreatePinCodeModel> createPinCodeModelObj = CreatePinCodeModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    oneController.dispose();
    sevenController.dispose();
  }
}
