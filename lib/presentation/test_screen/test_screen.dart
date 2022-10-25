import 'package:omar_s_application2/db/user.dart';

import 'controller/test_controller.dart';
import 'package:flutter/material.dart';
import 'package:omar_s_application2/core/app_export.dart';
import 'package:omar_s_application2/db/db_provider.dart';

class TestScreen extends GetWidget<TestController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.blueA700,
        body: Align(
          alignment: Alignment.center,
          //width: double.infinity,
          child: FloatingActionButton(
            onPressed: () {
              onTapTestScreen();
            },
          ),
        ),
      ),
    );
  }

  onTapTestScreen() async {
    // User user = User(
    //     nymID: "1c47a0ea-c3a9-4f9a-84ea-52ef1aaa4cc8",
    //     name: 'Halim',
    //     password: '123456',
    //     phone: '01111111111',
    //     accountStatus: 'Potential',
    //     loginStatus: 'SignedOut');
    // //
    // await DatabaseProvider.db.insert(user);
    // // // print('User updated successfully');
    // //
    List list = await DatabaseProvider.db.getUser("01553490803");
    print((list[0] as User).password);
    //print(list.length);
    // await DatabaseProvider.db.delete(2);
    // await DatabaseProvider.db.delete(3);

    // (list[0] as User).password = "123456";
    // await DatabaseProvider.db.update((list[0] as User));
    //
    // list = await DatabaseProvider.db.getUser("01553490808");
    // print((list[0] as User).password);
    // print(list.length);

    //await DatabaseProvider.db.dropTable();

    // await DatabaseProvider.db.createDatabase();

    // DatabaseProvider.db.nullifyDB();
    //
    //print(DatabaseProvider.db.getDB());
    //
    // await DatabaseProvider.db.deleteDatabase(
    //     '/data/user/0/com.omarsapplication.app/databases/userDB.db');
  }
}
