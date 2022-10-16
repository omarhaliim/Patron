import '../controller/successful_account_controller.dart';
import 'package:get/get.dart';

class SuccessfulAccountBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SuccessfulAccountController());
  }
}
