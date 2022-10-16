import '/core/app_export.dart';
import 'package:omar_s_application2/presentation/send_contact_list_screen/models/send_contact_list_model.dart';
import 'package:flutter/material.dart';

class SendContactListController extends GetxController {
  TextEditingController groupSixController = TextEditingController();

  TextEditingController groupSevenController = TextEditingController();

  Rx<SendContactListModel> sendContactListModelObj = SendContactListModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    groupSixController.dispose();
    groupSevenController.dispose();
  }
}
