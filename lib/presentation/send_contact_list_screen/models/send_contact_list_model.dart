import 'package:get/get.dart';
import 'listuser1_item_model.dart';
import 'listuser_eight1_item_model.dart';

class SendContactListModel {
  RxList<Listuser1ItemModel> listuser1ItemList =
      RxList.filled(8, Listuser1ItemModel());

  RxList<ListuserEight1ItemModel> listuserEight1ItemList =
      RxList.filled(15, ListuserEight1ItemModel());
}
