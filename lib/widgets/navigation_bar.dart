import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:omar_s_application2/core/utils/math_utils.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

import '../core/app_export.dart';

class NavigationBarWidget extends StatelessWidget {
  late Color color;

  NavigationBarWidget(this.color);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: getPadding(top: 10, bottom: 10, left: 10, right: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            IconButton(
              iconSize: 35,
              icon: FaIcon(color: color, FontAwesomeIcons.house),
              onPressed: () {
                Get.toNamed(AppRoutes.homeScreen);
              },
            ),
            IconButton(
              iconSize: 35,
              icon: FaIcon(color: color, FontAwesomeIcons.moneyBillTransfer),
              onPressed: () {
                Get.toNamed(AppRoutes.transferScreen);
              },
            ),
            IconButton(
              iconSize: 35,
              icon: FaIcon(color: color, FontAwesomeIcons.creditCard),
              onPressed: () {
                Alert(
                        type: AlertType.error,
                        context: context,
                        title:
                            "Your account has not activated yet!".toUpperCase())
                    .show();
              },
            ),
          ],
        ),
      ),
    );
  }
}
