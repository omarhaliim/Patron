import '../controller/tution_fees_controller.dart';
import 'package:get/get.dart';

class TutionFeesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TutionFeesController());
  }
}
