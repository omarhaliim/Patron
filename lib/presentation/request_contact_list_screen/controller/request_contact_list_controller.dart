import '/core/app_export.dart';
import 'package:omar_s_application2/presentation/request_contact_list_screen/models/request_contact_list_model.dart';
import 'package:flutter/material.dart';

class RequestContactListController extends GetxController {
  TextEditingController groupTwoController = TextEditingController();

  TextEditingController groupThreeController = TextEditingController();

  Rx<RequestContactListModel> requestContactListModelObj =
      RequestContactListModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    groupTwoController.dispose();
    groupThreeController.dispose();
  }
}
