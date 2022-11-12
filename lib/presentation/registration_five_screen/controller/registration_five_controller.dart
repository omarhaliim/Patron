import '/core/app_export.dart';
import 'package:omar_s_application2/presentation/registration_five_screen/models/registration_five_model.dart';
import 'package:flutter/material.dart';

class RegistrationFiveController extends GetxController {
  TextEditingController groupNineteenController = TextEditingController();

  TextEditingController languageController = TextEditingController();

  TextEditingController groupTwentyThreeController = TextEditingController();

  TextEditingController groupTwentyFiveController = TextEditingController();

  TextEditingController countryController = TextEditingController();

  TextEditingController dateController = TextEditingController();

  TextEditingController groupThirtyOneController = TextEditingController();

  Rx<RegistrationFiveModel> registrationFiveModelObj =
      RegistrationFiveModel().obs;
// RegistrationFiveController
  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    groupNineteenController.dispose();
    languageController.dispose();
    groupTwentyThreeController.dispose();
    groupTwentyFiveController.dispose();
    countryController.dispose();
    dateController.dispose();
    groupThirtyOneController.dispose();
  }
}
