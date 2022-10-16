import '../controller/create_pin_code_controller.dart';
import 'package:get/get.dart';

class CreatePinCodeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CreatePinCodeController());
  }
}
