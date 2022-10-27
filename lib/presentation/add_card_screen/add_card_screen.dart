import '../add_card_screen/widgets/listgroup12715_item_widget.dart';
import '../add_card_screen/widgets/listgroup12715_two_item_widget.dart';
import '../settings_screen/settings_screen.dart';
import 'controller/add_card_controller.dart';
import 'models/listgroup12715_item_model.dart';
import 'models/listgroup12715_two_item_model.dart';
import 'package:flutter/material.dart';
import 'package:omar_s_application2/core/app_export.dart';
import 'package:colour/colour.dart';

class AddCardScreen extends GetWidget<AddCardController> {
  final myControllerPhone = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        Get.toNamed(AppRoutes.homeScreen);
        return true;
      },
      child: SafeArea(
        child: Scaffold(
          backgroundColor: ColorConstant.gray100,
          body: Container(
            margin: getMargin(
              left: 20,
              top: 30,
              right: 20,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Align(
                      alignment: Alignment.centerRight,
                      child: Row(
                        // mainAxisAlignment: MainAxisAlignment.end,
                        // crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          CommonImageView(
                            svgPath: ImageConstant.imgMusic,
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          GestureDetector(
                            child: CommonImageView(
                              svgPath: ImageConstant.imgSettings,
                            ),
                            onTap: () {
                              OnTapSettings(context, "tuition_fees");
                            },
                          ),
                        ],
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: getPadding(
                          top: 7,
                          right: 10,
                        ),
                        child: Text(
                          "lbl_add_card2".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtPoppinsMedium32Black900.copyWith(
                            height: 1.00,
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: getPadding(
                          top: 10,
                          right: 10,
                        ),
                        child: Text(
                          "msg_insert_informat".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtPoppinsMedium16Gray600.copyWith(
                            height: 1.00,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: getMargin(top: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Row(
                            children: [
                              Expanded(
                                flex: 2,
                                child: Container(
                                  margin: getMargin(
                                      left: 10, right: 10, top: 10, bottom: 10),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "lbl_card_number".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtPoppinsMedium16Gray9007f
                                            .copyWith(
                                          height: 1.00,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      TextField(
                                        keyboardType: TextInputType.number,
                                        style: TextStyle(height: 1.75),
                                        autocorrect: false,
                                        controller: myControllerPhone,
                                        decoration: InputDecoration(
                                          contentPadding: EdgeInsets.symmetric(
                                              vertical: 5, horizontal: 10),
                                          border: OutlineInputBorder(),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: Container(
                                  margin: getMargin(
                                      left: 10, right: 10, top: 10, bottom: 10),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "lbl_exp".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtPoppinsMedium16Gray9007f
                                            .copyWith(
                                          height: 1.00,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      TextField(
                                        keyboardType: TextInputType.number,
                                        style: TextStyle(height: 1.75),
                                        autocorrect: false,
                                        controller: myControllerPhone,
                                        decoration: InputDecoration(
                                          contentPadding: EdgeInsets.symmetric(
                                              vertical: 5, horizontal: 10),
                                          border: OutlineInputBorder(),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: Container(
                                  margin: getMargin(
                                      left: 10, right: 10, top: 10, bottom: 10),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "lbl_cvv".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtPoppinsMedium16Gray9007f
                                            .copyWith(
                                          height: 1.00,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      TextField(
                                        keyboardType: TextInputType.number,
                                        style: TextStyle(height: 1.75),
                                        autocorrect: false,
                                        controller: myControllerPhone,
                                        decoration: InputDecoration(
                                          contentPadding: EdgeInsets.symmetric(
                                              vertical: 5, horizontal: 10),
                                          border: OutlineInputBorder(),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: ElevatedButton(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  CommonImageView(
                                    svgPath: ImageConstant.imgPlus,
                                    height: getSize(
                                      22,
                                    ),
                                    width: getSize(
                                      22,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Text(
                                    "lbl_add_new_card".tr.toUpperCase(),
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtPoppinsMedium16.copyWith(
                                      height: 1.00,
                                    ),
                                  ),
                                ],
                              ),
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                primary: Colour(0, 100, 254),
                                padding: EdgeInsets.symmetric(
                                    horizontal: 85, vertical: 7.5),
                                textStyle: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    // Row(
                    //   children: [
                    // Expanded(
                    //   child: TextField(
                    //     keyboardType: TextInputType.number,
                    //     style: TextStyle(height: 1.75),
                    //     autocorrect: false,
                    //     controller: myControllerPhone,
                    //     decoration: InputDecoration(
                    //       hintText: 'ex: 01xxxxxxxxx',
                    //       // contentPadding: EdgeInsets.symmetric(
                    //       //     vertical: 5, horizontal: 10),
                    //       border: OutlineInputBorder(),
                    //     ),
                    //   ),
                    // ),
                    //   ],
                    // )
                  ],
                ),
                // Align(
                //   alignment: Alignment.center,
                //   child: Padding(
                //     padding: getPadding(
                //       left: 10,
                //       top: 30,
                //       right: 10,
                //     ),
                //     child: Container(
                //       child: Align(
                //         alignment: Alignment.center,
                //         child: Container(
                //           height: getVerticalSize(
                //             178.00,
                //           ),
                //           width: getHorizontalSize(
                //             280.00,
                //           ),
                //           margin: getMargin(
                //             top: 10.415001,
                //             bottom: 10.415001,
                //           ),
                //           decoration: AppDecoration.outlineBlack9003f,
                //           child: Stack(
                //             alignment: Alignment.topCenter,
                //             children: [
                //               Align(
                //                 alignment: Alignment.centerLeft,
                //                 child: CommonImageView(
                //                   svgPath: ImageConstant.imgGroup12715BlueA700,
                //                   height: getVerticalSize(
                //                     178.00,
                //                   ),
                //                   width: getHorizontalSize(
                //                     280.00,
                //                   ),
                //                 ),
                //               ),
                //               Align(
                //                 alignment: Alignment.topCenter,
                //                 child: Container(
                //                   margin: getMargin(
                //                     left: 18,
                //                     top: 20,
                //                     right: 18,
                //                     bottom: 20,
                //                   ),
                //                   child: Column(
                //                     mainAxisSize: MainAxisSize.min,
                //                     crossAxisAlignment:
                //                         CrossAxisAlignment.start,
                //                     mainAxisAlignment: MainAxisAlignment.start,
                //                     children: [
                //                       Row(
                //                         mainAxisAlignment:
                //                             MainAxisAlignment.spaceBetween,
                //                         crossAxisAlignment:
                //                             CrossAxisAlignment.center,
                //                         mainAxisSize: MainAxisSize.max,
                //                         children: [
                //                           Text(
                //                             "lbl_patron".tr,
                //                             overflow: TextOverflow.ellipsis,
                //                             textAlign: TextAlign.left,
                //                             style: AppStyle
                //                                 .txtPoppinsExtraBold20
                //                                 .copyWith(),
                //                           ),
                //                           Padding(
                //                             padding: getPadding(
                //                               top: 3,
                //                               bottom: 2,
                //                             ),
                //                             child: Text(
                //                               "lbl_prepaid_card"
                //                                   .tr
                //                                   .toUpperCase(),
                //                               overflow: TextOverflow.ellipsis,
                //                               textAlign: TextAlign.left,
                //                               style: AppStyle.txtPoppinsMedium14
                //                                   .copyWith(
                //                                 height: 1.00,
                //                               ),
                //                             ),
                //                           ),
                //                         ],
                //                       ),
                //                       Align(
                //                         alignment: Alignment.centerRight,
                //                         child: Padding(
                //                           padding: getPadding(
                //                             left: 220,
                //                             top: 11,
                //                             right: 1,
                //                           ),
                //                           child: CommonImageView(
                //                             svgPath: ImageConstant.imgEyeclose,
                //                             height: getVerticalSize(
                //                               8.00,
                //                             ),
                //                             width: getHorizontalSize(
                //                               21.00,
                //                             ),
                //                           ),
                //                         ),
                //                       ),
                //                       Padding(
                //                         padding: getPadding(
                //                           left: 1,
                //                           top: 22,
                //                           right: 10,
                //                         ),
                //                         child: CommonImageView(
                //                           svgPath: ImageConstant.imgCircleshide,
                //                           height: getVerticalSize(
                //                             5.00,
                //                           ),
                //                           width: getHorizontalSize(
                //                             176.00,
                //                           ),
                //                         ),
                //                       ),
                //                       Padding(
                //                         padding: getPadding(
                //                           left: 1,
                //                           top: 3,
                //                           right: 10,
                //                         ),
                //                         child: Row(
                //                           mainAxisAlignment:
                //                               MainAxisAlignment.start,
                //                           crossAxisAlignment:
                //                               CrossAxisAlignment.start,
                //                           mainAxisSize: MainAxisSize.min,
                //                           children: [
                //                             Text(
                //                               "lbl_exp_08_28".tr,
                //                               overflow: TextOverflow.ellipsis,
                //                               textAlign: TextAlign.left,
                //                               style: AppStyle
                //                                   .txtPoppinsRegular10
                //                                   .copyWith(
                //                                 letterSpacing: 0.10,
                //                               ),
                //                             ),
                //                             Padding(
                //                               padding: getPadding(
                //                                 left: 22,
                //                                 top: 3,
                //                                 bottom: 1,
                //                               ),
                //                               child: Text(
                //                                 "lbl_cvv_888".tr,
                //                                 overflow: TextOverflow.ellipsis,
                //                                 textAlign: TextAlign.left,
                //                                 style: AppStyle
                //                                     .txtPoppinsRegular10
                //                                     .copyWith(
                //                                   letterSpacing: 0.10,
                //                                 ),
                //                               ),
                //                             ),
                //                           ],
                //                         ),
                //                       ),
                //                       Padding(
                //                         padding: getPadding(
                //                           left: 1,
                //                           top: 20,
                //                           right: 10,
                //                         ),
                //                         child: Text(
                //                           "lbl_mohamed_shaker2".tr,
                //                           overflow: TextOverflow.ellipsis,
                //                           textAlign: TextAlign.left,
                //                           style: TextStyle(
                //                               color:
                //                                   Colors.white.withOpacity(0.8),
                //                               fontSize: 10),
                //
                //                           // style: TextStyle(fontSize: 8),
                //                           // style: AppStyle.txtPoppinsRegular11.copyWith(),
                //                         ),
                //                       ),
                //                     ],
                //                   ),
                //                 ),
                //               ),
                //             ],
                //           ),
                //         ),
                //       ),
                //       // child: Obx(
                //       //       () => ListView.builder(
                //       //     physics: BouncingScrollPhysics(),
                //       //     shrinkWrap: true,
                //       //         itemCount: controller.addCardModelObj
                //       //             .value.listgroup12715ItemList.length,
                //       //     itemBuilder: (context, index) {
                //       //       Listgroup12715ItemModel model =
                //       //       controller.addCardModelObj.value
                //       //           .listgroup12715ItemList[index];
                //       //       return Listgroup12715ItemWidget(
                //       //         model,
                //       //       );
                //       //     },
                //       //   ),
                //       // ),
                //     ),
                //   ),
                // ),
                // Align(
                //   alignment: Alignment.center,
                //   child: Padding(
                //     padding: getPadding(
                //       left: 10,
                //       top: 30,
                //       right: 10,
                //     ),
                //     child: Container(
                //       child: Align(
                //         alignment: Alignment.center,
                //         child: Container(
                //           height: getVerticalSize(
                //             178.00,
                //           ),
                //           width: getHorizontalSize(
                //             280.00,
                //           ),
                //           margin: getMargin(
                //             top: 10.415001,
                //             bottom: 10.415001,
                //           ),
                //           decoration: AppDecoration.outlineBlack9003f,
                //           child: Stack(
                //             alignment: Alignment.topCenter,
                //             children: [
                //               Align(
                //                 alignment: Alignment.centerLeft,
                //                 child: CommonImageView(
                //                   svgPath: ImageConstant.imgGroup12715Black900,
                //                   height: getVerticalSize(
                //                     178.00,
                //                   ),
                //                   width: getHorizontalSize(
                //                     280.00,
                //                   ),
                //                 ),
                //               ),
                //               Align(
                //                 alignment: Alignment.topCenter,
                //                 child: Container(
                //                   margin: getMargin(
                //                     left: 18,
                //                     top: 20,
                //                     right: 18,
                //                     bottom: 20,
                //                   ),
                //                   child: Column(
                //                     mainAxisSize: MainAxisSize.min,
                //                     crossAxisAlignment:
                //                         CrossAxisAlignment.start,
                //                     mainAxisAlignment: MainAxisAlignment.start,
                //                     children: [
                //                       Row(
                //                         mainAxisAlignment:
                //                             MainAxisAlignment.spaceBetween,
                //                         crossAxisAlignment:
                //                             CrossAxisAlignment.center,
                //                         mainAxisSize: MainAxisSize.max,
                //                         children: [
                //                           Text(
                //                             "lbl_patron".tr,
                //                             overflow: TextOverflow.ellipsis,
                //                             textAlign: TextAlign.left,
                //                             style: AppStyle
                //                                 .txtPoppinsExtraBold20
                //                                 .copyWith(),
                //                           ),
                //                           Padding(
                //                             padding: getPadding(
                //                               top: 3,
                //                               bottom: 2,
                //                             ),
                //                             child: Text(
                //                               "lbl_credit_card"
                //                                   .tr
                //                                   .toUpperCase(),
                //                               overflow: TextOverflow.ellipsis,
                //                               textAlign: TextAlign.left,
                //                               style: AppStyle.txtPoppinsMedium14
                //                                   .copyWith(
                //                                 height: 1.00,
                //                               ),
                //                             ),
                //                           ),
                //                         ],
                //                       ),
                //                       Align(
                //                         alignment: Alignment.centerRight,
                //                         child: Padding(
                //                           padding: getPadding(
                //                             left: 220,
                //                             top: 11,
                //                             right: 1,
                //                           ),
                //                           child: CommonImageView(
                //                             svgPath: ImageConstant.imgEyeclose,
                //                             height: getVerticalSize(
                //                               8.00,
                //                             ),
                //                             width: getHorizontalSize(
                //                               21.00,
                //                             ),
                //                           ),
                //                         ),
                //                       ),
                //                       Padding(
                //                         padding: getPadding(
                //                           left: 1,
                //                           top: 22,
                //                           right: 10,
                //                         ),
                //                         child: CommonImageView(
                //                           svgPath: ImageConstant.imgCircleshide,
                //                           height: getVerticalSize(
                //                             5.00,
                //                           ),
                //                           width: getHorizontalSize(
                //                             176.00,
                //                           ),
                //                         ),
                //                       ),
                //                       Padding(
                //                         padding: getPadding(
                //                           left: 1,
                //                           top: 3,
                //                           right: 10,
                //                         ),
                //                         child: Row(
                //                           mainAxisAlignment:
                //                               MainAxisAlignment.start,
                //                           crossAxisAlignment:
                //                               CrossAxisAlignment.start,
                //                           mainAxisSize: MainAxisSize.min,
                //                           children: [
                //                             Text(
                //                               "lbl_exp_08_28".tr,
                //                               overflow: TextOverflow.ellipsis,
                //                               textAlign: TextAlign.left,
                //                               style: AppStyle
                //                                   .txtPoppinsRegular10
                //                                   .copyWith(
                //                                 letterSpacing: 0.10,
                //                               ),
                //                             ),
                //                             Padding(
                //                               padding: getPadding(
                //                                 left: 22,
                //                                 top: 3,
                //                                 bottom: 1,
                //                               ),
                //                               child: Text(
                //                                 "lbl_cvv_888".tr,
                //                                 overflow: TextOverflow.ellipsis,
                //                                 textAlign: TextAlign.left,
                //                                 style: AppStyle
                //                                     .txtPoppinsRegular10
                //                                     .copyWith(
                //                                   letterSpacing: 0.10,
                //                                 ),
                //                               ),
                //                             ),
                //                           ],
                //                         ),
                //                       ),
                //                       Padding(
                //                         padding: getPadding(
                //                           left: 1,
                //                           top: 20,
                //                           right: 10,
                //                         ),
                //                         child: Text(
                //                           "lbl_mohamed_shaker2".tr,
                //                           overflow: TextOverflow.ellipsis,
                //                           textAlign: TextAlign.left,
                //                           style: TextStyle(
                //                               color:
                //                                   Colors.white.withOpacity(0.8),
                //                               fontSize: 10),
                //
                //                           // style: TextStyle(fontSize: 8),
                //                           // style: AppStyle.txtPoppinsRegular11.copyWith(),
                //                         ),
                //                       ),
                //                     ],
                //                   ),
                //                 ),
                //               ),
                //             ],
                //           ),
                //         ),
                //       ),
                //     ),
                //   ),
                // ),
                Container(
                  child: Padding(
                    padding:
                        getPadding(top: 10, bottom: 20, left: 20, right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        CommonImageView(
                          svgPath: ImageConstant.imgHome,
                        ),
                        CommonImageView(
                          svgPath: ImageConstant.imgRefresh,
                        ),
                        CommonImageView(
                          svgPath: ImageConstant.imgSave,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  onTapHomeScreen() {
    Get.toNamed(AppRoutes.homeScreen);
  }

  OnTapSettings(BuildContext context, String page_name) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => SettingsScreen(page_name),
      ),
    );
  }
}
