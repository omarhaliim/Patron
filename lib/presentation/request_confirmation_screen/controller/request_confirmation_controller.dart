import '/core/app_export.dart';
import 'package:omar_s_application2/presentation/request_confirmation_screen/models/request_confirmation_model.dart';

class RequestConfirmationController extends GetxController {
  Rx<RequestConfirmationModel> requestConfirmationModelObj =
      RequestConfirmationModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
