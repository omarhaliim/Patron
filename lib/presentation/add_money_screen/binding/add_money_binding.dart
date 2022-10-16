import '../controller/add_money_controller.dart';
import 'package:get/get.dart';

class AddMoneyBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AddMoneyController());
  }
}
