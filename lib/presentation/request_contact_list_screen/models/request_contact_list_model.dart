import 'package:get/get.dart';
import 'listuser_item_model.dart';
import 'listuser_eight_item_model.dart';

class RequestContactListModel {
  RxList<ListuserItemModel> listuserItemList =
      RxList.filled(8, ListuserItemModel());

  RxList<ListuserEightItemModel> listuserEightItemList =
      RxList.filled(15, ListuserEightItemModel());
}
