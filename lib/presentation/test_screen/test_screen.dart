import 'package:omar_s_application2/db/user.dart';

import 'controller/test_controller.dart';
import 'package:flutter/material.dart';
import 'package:omar_s_application2/core/app_export.dart';
import 'package:omar_s_application2/db/db_provider.dart';

import 'package:intl/intl.dart';
import 'dart:io';

import 'package:omar_s_application2/configs/image_picker_configs.dart';

/// Image model.
import 'package:omar_s_application2/models/image_object.dart';

/// Image utilities.
import 'package:omar_s_application2/utils/image_utils.dart';

/// Preset image editors
import 'package:omar_s_application2/widgets/image_picker/editors/editor_params.dart';
import 'package:omar_s_application2/widgets/image_picker/editors/image_edit.dart';
import 'package:omar_s_application2/widgets/image_picker/editors/image_filter.dart';
import 'package:omar_s_application2/widgets/image_picker/editors/image_sticker.dart';

/// Advanced image picker widget.
import 'package:omar_s_application2/widgets/image_picker/picker/image_picker.dart';

class TestScreen extends StatefulWidget {
  const TestScreen({Key? key}) : super(key: key);

  @override
  State<TestScreen> createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
  List<ImageObject> _imgObjs = [];

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
    // List list = await DatabaseProvider.db.getUser("01553490803");
    // print((list[0] as User).password);
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
