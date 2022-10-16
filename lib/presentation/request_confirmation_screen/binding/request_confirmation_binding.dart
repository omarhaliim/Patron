import '../controller/request_confirmation_controller.dart';
import 'package:get/get.dart';

class RequestConfirmationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RequestConfirmationController());
  }
}
