import '../controller/registration_3_two_controller.dart';
import 'package:get/get.dart';

class Registration3TwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => Registration3TwoController());
  }
}
