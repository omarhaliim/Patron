import '../controller/registration_five_controller.dart';
import '../models/listemailaddress_item_model.dart';
import 'package:flutter/material.dart';
import 'package:omar_s_application2/core/app_export.dart';
import 'package:omar_s_application2/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class ListemailaddressItemWidget extends StatelessWidget {
  ListemailaddressItemWidget(this.listemailaddressItemModelObj);

  ListemailaddressItemModel listemailaddressItemModelObj;

  var controller = Get.find<RegistrationFiveController>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        margin: getMargin(
          top: 18.5,
          bottom: 18.5,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: getPadding(
                right: 10,
              ),
              child: Text(
                "lbl_email_address".tr,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtMontserratSemiBold12.copyWith(),
              ),
            ),
            Padding(
              padding: getPadding(
                top: 10,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  CustomIconButton(
                    height: 30,
                    width: 30,
                    padding: IconButtonPadding.PaddingAll8,
                    child: CommonImageView(
                      svgPath: ImageConstant.imgPath41110,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 14,
                      top: 8,
                      bottom: 5,
                    ),
                    child: Text(
                      "msg_your_email_addr".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtPoppinsMedium16Gray900.copyWith(
                        height: 1.00,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
