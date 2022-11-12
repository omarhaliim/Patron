import '../controller/registration_five_controller.dart';
import 'package:get/get.dart';

class RegistrationFiveBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RegistrationFiveController());
  }
}
