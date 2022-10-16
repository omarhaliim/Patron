import '../controller/request_contact_list_controller.dart';
import 'package:get/get.dart';

class RequestContactListBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RequestContactListController());
  }
}
