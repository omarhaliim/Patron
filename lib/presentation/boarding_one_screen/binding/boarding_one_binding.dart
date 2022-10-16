import '../controller/boarding_one_controller.dart';
import 'package:get/get.dart';

class BoardingOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BoardingOneController());
  }
}
