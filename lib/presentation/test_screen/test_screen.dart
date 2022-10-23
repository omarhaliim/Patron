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
    User user = User(
        nymID: "nymID1",
        name: 'Ashraf',
        password: '123456',
        phone: '01096143191',
        accountStatus: 'Potential',
        loginStatus: 'SignedOut');
    //
    await DatabaseProvider.db.insert(user);
    // print('User updated successfully');

    List list = await DatabaseProvider.db.getUsers();
    print(list.length);
  }
}
