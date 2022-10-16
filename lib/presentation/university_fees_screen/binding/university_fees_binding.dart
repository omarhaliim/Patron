import '../controller/university_fees_controller.dart';
import 'package:get/get.dart';

class UniversityFeesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => UniversityFeesController());
  }
}
