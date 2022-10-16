import '../controller/registration_3_one_controller.dart';
import 'package:get/get.dart';

class Registration3OneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => Registration3OneController());
  }
}
