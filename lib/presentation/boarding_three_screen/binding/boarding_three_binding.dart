import '../controller/boarding_three_controller.dart';
import 'package:get/get.dart';

class BoardingThreeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BoardingThreeController());
  }
}
