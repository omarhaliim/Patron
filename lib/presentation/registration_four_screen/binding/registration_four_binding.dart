import '../controller/registration_four_controller.dart';
import 'package:get/get.dart';

class RegistrationFourBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RegistrationFourController());
  }
}
