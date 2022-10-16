import '../controller/successful_send_controller.dart';
import 'package:get/get.dart';

class SuccessfulSendBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SuccessfulSendController());
  }
}
