import '../controller/send_confirmation_controller.dart';
import 'package:get/get.dart';

class SendConfirmationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SendConfirmationController());
  }
}
