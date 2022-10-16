import '/core/app_export.dart';
import 'package:omar_s_application2/presentation/school_fees_screen/models/school_fees_model.dart';

class SchoolFeesController extends GetxController {
  Rx<SchoolFeesModel> schoolFeesModelObj = SchoolFeesModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
