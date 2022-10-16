import '../controller/school_fees_controller.dart';
import 'package:get/get.dart';

class SchoolFeesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SchoolFeesController());
  }
}
