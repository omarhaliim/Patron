import '../controller/boarding_two_controller.dart';
import 'package:get/get.dart';

class BoardingTwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BoardingTwoController());
  }
}
