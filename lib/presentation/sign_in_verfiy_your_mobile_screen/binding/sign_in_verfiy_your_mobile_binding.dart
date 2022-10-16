import '../controller/sign_in_verfiy_your_mobile_controller.dart';
import 'package:get/get.dart';

class SignInVerfiyYourMobileBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SignInVerfiyYourMobileController());
  }
}
