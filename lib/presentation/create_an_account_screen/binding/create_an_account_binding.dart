import '../controller/create_an_account_controller.dart';
import 'package:get/get.dart';

class CreateAnAccountBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CreateAnAccountController());
  }
}
