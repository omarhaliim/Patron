import '../controller/request_contact_list_controller.dart';
import '../models/listuser_eight_item_model.dart';
import 'package:flutter/material.dart';
import 'package:omar_s_application2/core/app_export.dart';

// ignore: must_be_immutable
class ListuserEightItemWidget extends StatelessWidget {
  ListuserEightItemWidget(this.listuserEightItemModelObj,
      {this.onTapContactBox});

  ListuserEightItemModel listuserEightItemModelObj;

  var controller = Get.find<RequestContactListController>();

  VoidCallback? onTapContactBox;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapContactBox!();
      },
      child: Container(
        margin: getMargin(
          top: 10.0,
          bottom: 10.0,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            getHorizontalSize(
              16.00,
            ),
          ),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(
                    getHorizontalSize(
                      16.00,
                    ),
                  ),
                  child: CommonImageView(
                    svgPath: ImageConstant.imgUser,
                    height: getSize(
                      48.00,
                    ),
                    width: getSize(
                      48.00,
                    ),
                  ),
                ),
                Container(
                  width: getHorizontalSize(
                    118.00,
                  ),
                  margin: getMargin(
                    left: 16,
                    top: 4,
                    bottom: 4,
                  ),
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "lbl_contact_name".tr,
                          style: TextStyle(
                            color: ColorConstant.black900,
                            fontSize: getFontSize(
                              14,
                            ),
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                            height: 1.00,
                          ),
                        ),
                        TextSpan(
                          text: " ".tr,
                          style: TextStyle(
                            color: ColorConstant.black900,
                            fontSize: getFontSize(
                              12,
                            ),
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                            height: 1.17,
                          ),
                        ),
                        TextSpan(
                          text: "lbl_username".tr,
                          style: TextStyle(
                            color: ColorConstant.blueA700,
                            fontSize: getFontSize(
                              12,
                            ),
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                            height: 1.17,
                          ),
                        ),
                      ],
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ],
            ),
            Padding(
              padding: getPadding(
                left: 89,
                top: 13,
                bottom: 13,
              ),
              child: CommonImageView(
                svgPath: ImageConstant.imgFavorite,
                height: getVerticalSize(
                  21.00,
                ),
                width: getHorizontalSize(
                  24.00,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
