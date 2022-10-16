import '../controller/verfiy_your_mobile_controller.dart';
import 'package:get/get.dart';

class VerfiyYourMobileBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => VerfiyYourMobileController());
  }
}
