import 'package:omar_s_application2/models/schools.dart';

import '../settings_screen/settings_screen.dart';
import 'controller/school_fees_controller.dart';
import 'package:flutter/material.dart';
import 'package:omar_s_application2/core/app_export.dart';
import 'package:colour/colour.dart';

class SchoolFeesScreen extends StatefulWidget {
  const SchoolFeesScreen({super.key});

  @override
  State<SchoolFeesScreen> createState() => _SchoolFeesScreenState();
}

class _SchoolFeesScreenState extends State<SchoolFeesScreen> {
  List<School> schools = [];

  @override
  void initState() {
    super.initState();

    School s1 =
        School("msg_modern_schools".tr, ImageConstant.imgRectangle66671);
    schools.add(s1);

    School s2 =
        School("msg_modern_american".tr, ImageConstant.imgRectangle6667188X88);
    schools.add(s2);
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        onTapImgArrowleft();
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
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Container(
                              height: 50,
                              width: 50,
                              child: FloatingActionButton(
                                  backgroundColor: ColorConstant.gray100,
                                  foregroundColor: Colour(0, 100, 254),
                                  onPressed: onTapImgArrowleft,
                                  child: Icon(
                                    Icons.arrow_back_outlined,
                                    size: 30,
                                  )),
                            ),
                            Row(
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
                                    OnTapSettings(context, "school_fees");
                                  },
                                ),
                              ],
                            )
                          ]),
                      Text("lbl_tution_fees".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtPoppinsMedium32Black900
                              .copyWith(height: 1.00)),
                      SizedBox(
                        height: 10,
                      ),
                      Text("lbl_select_school".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtPoppinsMedium16Gray600
                              .copyWith(height: 1.00)),
                      Expanded(
                        child: ListView.builder(
                          physics: BouncingScrollPhysics(),
                          scrollDirection: Axis.vertical,
                          itemCount: schools.length,
                          itemBuilder: (BuildContext context, int index) {
                            return createSchoolButton(
                                schools[index].name, schools[index].image_path);
                            // return Text('data');
                          },
                        ),
                      ),
                      Container(
                        child: Padding(
                          padding: getPadding(
                              top: 10, bottom: 20, left: 20, right: 20),
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
                    ]),
              ))),
    );
  }

  Widget createSchoolButton(String school_name, String img) {
    return Align(
        alignment: Alignment.center,
        child: GestureDetector(
            onTap: () {
              onTapSchoolorUnive();
            },
            child: Container(
                margin: getMargin(top: 33, right: 2),
                decoration: AppDecoration.outlineBlack9003f12
                    .copyWith(borderRadius: BorderRadiusStyle.roundedBorder16),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                          padding: getPadding(left: 13, top: 4, bottom: 4),
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(
                                  getHorizontalSize(16.00)),
                              child: CommonImageView(
                                  imagePath: img,
                                  height: getSize(88.00),
                                  width: getSize(88.00)))),
                      Container(
                          width: getHorizontalSize(147.00),
                          margin: getMargin(left: 7, top: 29, bottom: 25),
                          child: Text(school_name,
                              maxLines: null,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsMedium16Black900
                                  .copyWith(height: 1.50)))
                    ]))));
  }

  onTapImgArrowleft() {
    Get.toNamed(AppRoutes.tutionFeesScreen);
  }

  onTapSchoolorUnive() {
    Get.toNamed(AppRoutes.schoolPayLaterScreen);
  }

  onTapSchoolorUnive1() {
    Get.toNamed(AppRoutes.schoolPayLaterScreen);
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
