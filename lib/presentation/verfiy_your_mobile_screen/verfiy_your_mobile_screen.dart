import 'controller/verfiy_your_mobile_controller.dart';
import 'package:flutter/material.dart';
import 'package:omar_s_application2/core/app_export.dart';
import 'package:omar_s_application2/widgets/custom_button.dart';
import 'package:flutter_email_sender/flutter_email_sender.dart';

class VerfiyYourMobileScreen extends GetWidget<VerfiyYourMobileController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray100,
            body: Container(
                width: size.width,
                child: SingleChildScrollView(
                    child: Container(
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                      Padding(
                          padding: getPadding(left: 34, top: 65, right: 34),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                GestureDetector(
                                    onTap: () {
                                      onTapImgArrowleft();
                                    },
                                    child: CommonImageView(
                                        svgPath: ImageConstant.imgArrowleft,
                                        height: getVerticalSize(14.00),
                                        width: getHorizontalSize(16.00))),
                                Padding(
                                    padding:
                                        getPadding(left: 64, top: 5, bottom: 5),
                                    child: ClipRRect(
                                        borderRadius: BorderRadius.circular(
                                            getHorizontalSize(2.00)),
                                        child: CommonImageView(
                                            svgPath:
                                                ImageConstant.imgProgressbar,
                                            height: getVerticalSize(4.00),
                                            width: getHorizontalSize(147.00))))
                              ])),
                      Padding(
                          padding: getPadding(left: 35, top: 55, right: 35),
                          child: Text("Verfiy your email".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsMedium16Black900
                                  .copyWith(height: 1.00))),
                      Align(
                          alignment: Alignment.center,
                          child: Container(
                              width: getHorizontalSize(293.00),
                              margin: getMargin(left: 25, top: 37, right: 34),
                              child: Text(
                                  "You will need to verify your email to complete registration"
                                      .tr,
                                  maxLines: null,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtPoppinsMedium16Black9004c
                                      .copyWith(height: 1.50)))),
                      CustomButton(
                          width: 240,
                          text: "send email".tr.toUpperCase(),
                          margin: getMargin(left: 34, top: 252, right: 34),
                          variant: ButtonVariant.OutlineBlack9003f,
                          onTap: onTapBtnSendemail,
                          alignment: Alignment.center),
                      CustomButton(
                        width: 240,
                        text: "lbl_back".tr.toUpperCase(),
                        margin:
                            getMargin(left: 34, top: 20, right: 34, bottom: 20),
                        variant: ButtonVariant.OutlineBlack9003f1_2,
                        fontStyle: ButtonFontStyle.PoppinsMedium16BlueA700,
                        alignment: Alignment.center,
                        onTap: onTapImgArrowleft,
                      )
                    ]))))));
  }

  onTapImgArrowleft() {
    Get.toNamed(AppRoutes.createAnAccountScreen);
  }

  onTapBtnSendemail() async {
    Get.toNamed(AppRoutes.CreateEnterPin);
  }
}
