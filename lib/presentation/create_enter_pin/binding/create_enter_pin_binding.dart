import '../controller/create_in_enter_pin_controller.dart';
import 'package:get/get.dart';

class CreateEnterPinBinding   extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => create_enter_pinController());
  }
}
