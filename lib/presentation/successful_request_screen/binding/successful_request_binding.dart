import '../controller/successful_request_controller.dart';
import 'package:get/get.dart';

class SuccessfulRequestBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SuccessfulRequestController());
  }
}
