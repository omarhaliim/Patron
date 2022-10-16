import '../controller/university_pay_later_controller.dart';
import 'package:get/get.dart';

class UniversityPayLaterBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => UniversityPayLaterController());
  }
}
