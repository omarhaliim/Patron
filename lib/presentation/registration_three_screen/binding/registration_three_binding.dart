import '../controller/registration_three_controller.dart';
import 'package:get/get.dart';

class RegistrationThreeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RegistrationThreeController());
  }
}
