import '/core/app_export.dart';
import 'package:omar_s_application2/presentation/send_confirmation_screen/models/send_confirmation_model.dart';

class SendConfirmationController extends GetxController {
  Rx<SendConfirmationModel> sendConfirmationModelObj =
      SendConfirmationModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
