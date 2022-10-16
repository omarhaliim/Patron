import '../controller/sign_in_enter_pin_controller.dart';
import 'package:get/get.dart';

class SignInEnterPinBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SignInEnterPinController());
  }
}
