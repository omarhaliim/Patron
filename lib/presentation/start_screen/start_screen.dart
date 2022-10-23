import 'controller/start_controller.dart';
import 'package:flutter/material.dart';
import 'package:omar_s_application2/core/app_export.dart';
import 'package:omar_s_application2/widgets/custom_button.dart';
import 'package:colour/colour.dart';
import 'package:omar_s_application2/db/user.dart';
import 'package:omar_s_application2/db/db_provider.dart';

class StartScreen extends GetWidget<StartController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.gray100,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              margin: getMargin(top: 200),
              child: Text(
                "msg_start_by_creati".tr,
                maxLines: null,
                textAlign: TextAlign.center,
                style: AppStyle.txtPoppinsSemiBold32Black900
                    .copyWith(height: 1.41),
              ),
            ),
            Container(
              margin: getMargin(bottom: 100),
              child: Column(
                children: [
                  ElevatedButton(
                    child: Text('create account'.toUpperCase()),
                    onPressed: () {
                      onTapBtnCreateaccount();
                      //onTapTestScreen();
                    },
                    style: ElevatedButton.styleFrom(
                        primary: Colour(0, 100, 254),
                        padding:
                            EdgeInsets.symmetric(horizontal: 45, vertical: 7.5),
                        textStyle: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 20,
                        )),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    child: Text('sign in'.toUpperCase()),
                    onPressed: () {
                      onTapBtnSignInScreen();
                    },
                    style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                        onPrimary: Colour(0, 100, 254),
                        padding: EdgeInsets.symmetric(
                            horizontal: 97.5, vertical: 7.5),
                        textStyle: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 20,
                        )),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  onTapBtnCreateaccount() {
    Get.toNamed(AppRoutes.createAnAccountScreen);
  }

  onTapBtnSignInScreen() {
    Get.toNamed(AppRoutes.signInScreen);
  }

  onTapTestScreen() async {
    // User user = User(
    //     id: 1,
    //     name: 'Ashraf',
    //     password: '123456',
    //     phone: '01096143191',
    //     accountStatus: 'Potential',
    //     loginStatus: 'SignedOut');
    //
    // await DatabaseProvider.db.update(user);
    // print('User updated successfully');

    List list = await DatabaseProvider.db.getUser('01096143191');
    print(list.length);
  }
}
