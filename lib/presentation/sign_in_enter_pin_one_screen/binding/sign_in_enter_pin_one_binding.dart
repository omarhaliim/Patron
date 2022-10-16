import '../controller/sign_in_enter_pin_one_controller.dart';
import 'package:get/get.dart';

class SignInEnterPinOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SignInEnterPinOneController());
  }
}
