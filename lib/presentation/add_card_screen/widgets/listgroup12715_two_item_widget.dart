import '../controller/add_card_controller.dart';
import '../models/listgroup12715_item_model.dart';
import 'package:flutter/material.dart';
import 'package:omar_s_application2/core/app_export.dart';

// ignore: must_be_immutable
class Listgroup12715ItemWidgetOMAR extends StatelessWidget {
  Listgroup12715ItemWidgetOMAR(this.listgroup12715ItemModelObj);

  Listgroup12715ItemModel listgroup12715ItemModelObj;

  var controller = Get.find<AddCardController>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        height: getVerticalSize(
          178.00,
        ),
        width: getHorizontalSize(
          280.00,
        ),
        margin: getMargin(
          top: 10.415001,
          bottom: 10.415001,
        ),
        decoration: AppDecoration.outlineBlack9003f,
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: CommonImageView(
                svgPath:  ImageConstant.imgGroup12715Black900,
                height: getVerticalSize(
                  178.00,
                ),
                width: getHorizontalSize(
                  280.00,
                ),
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                margin: getMargin(
                  left: 18,
                  top: 20,
                  right: 18,
                  bottom: 20,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          "lbl_patron".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtPoppinsExtraBold20.copyWith(),
                        ),
                        Padding(
                          padding: getPadding(
                            top: 3,
                            bottom: 2,
                          ),
                          child: Text(
                            "lbl_credit_card".tr.toUpperCase(),
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtPoppinsMedium14.copyWith(
                              height: 1.00,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Padding(
                        padding: getPadding(
                          left: 220,
                          top: 11,
                          right: 1,
                        ),
                        child: CommonImageView(
                          svgPath: ImageConstant.imgEyeclose,
                          height: getVerticalSize(
                            8.00,
                          ),
                          width: getHorizontalSize(
                            21.00,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 1,
                        top: 22,
                        right: 10,
                      ),
                      child: CommonImageView(
                        svgPath: ImageConstant.imgCircleshide,
                        height: getVerticalSize(
                          5.00,
                        ),
                        width: getHorizontalSize(
                          176.00,
                        ),
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 1,
                        top: 3,
                        right: 10,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            "lbl_exp_08_28".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtPoppinsRegular10.copyWith(
                              letterSpacing: 0.10,
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 22,
                              top: 3,
                              bottom: 1,
                            ),
                            child: Text(
                              "lbl_cvv_888".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsRegular10.copyWith(
                                letterSpacing: 0.10,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 1,
                        top: 20,
                        right: 10,


                      ),
                      child: Text(

                        "lbl_mohamed_shaker2".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: TextStyle(color: Colors.white.withOpacity(0.8),fontSize: 10),

                        // style: TextStyle(fontSize: 8),
                        // style: AppStyle.txtPoppinsRegular11.copyWith(),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
