import '/core/app_export.dart';
import 'package:omar_s_application2/presentation/test_screen/models/test_model.dart';

class TestController extends GetxController {
  Rx<TestModel> testModelObj = TestModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
