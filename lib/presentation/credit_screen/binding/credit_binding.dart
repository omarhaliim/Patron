import '../controller/credit_controller.dart';
import 'package:get/get.dart';

class CreditBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CreditController());
  }
}
