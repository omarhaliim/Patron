import '../controller/school_pay_later_controller.dart';
import 'package:get/get.dart';

class SchoolPayLaterBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SchoolPayLaterController());
  }
}
