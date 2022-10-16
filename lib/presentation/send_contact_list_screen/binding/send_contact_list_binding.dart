import '../controller/send_contact_list_controller.dart';
import 'package:get/get.dart';

class SendContactListBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SendContactListController());
  }
}
