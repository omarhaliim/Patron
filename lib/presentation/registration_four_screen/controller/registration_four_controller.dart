import '/core/app_export.dart';
import 'package:omar_s_application2/presentation/registration_four_screen/models/registration_four_model.dart';
import 'package:flutter/material.dart';

class RegistrationFourController extends GetxController {
  TextEditingController groupNineteenController = TextEditingController();

  TextEditingController languageController = TextEditingController();

  TextEditingController groupTwentyThreeController = TextEditingController();

  TextEditingController groupTwentyFiveController = TextEditingController();

  TextEditingController countryController = TextEditingController();

  TextEditingController dateController = TextEditingController();

  TextEditingController groupThirtyOneController = TextEditingController();

  Rx<RegistrationFourModel> registrationFourModelObj =
      RegistrationFourModel().obs;

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
