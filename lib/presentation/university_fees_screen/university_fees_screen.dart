import 'package:omar_s_application2/models/schools.dart';

import '../../models/university.dart';
import '../settings_screen/settings_screen.dart';
import 'controller/university_fees_controller.dart';
import 'package:flutter/material.dart';
import 'package:omar_s_application2/core/app_export.dart';
import 'package:colour/colour.dart';

class UniversityFeesScreen extends StatefulWidget {
  const UniversityFeesScreen({super.key});

  @override
  State<UniversityFeesScreen> createState() => _UniversityFeesScreenState();
}

class _UniversityFeesScreenState extends State<UniversityFeesScreen> {
  List<University> universities = [];

  @override
  void initState() {
    super.initState();

    University u1 = University(
        "American University in Cairo", ImageConstant.imgRectangle666711);
    universities.add(u1);

    University u2 = University(
        "German University in Cairo", ImageConstant.imgRectangle666712);
    universities.add(u2);

    University u3 =
        University("msg_british_univers".tr, ImageConstant.imgRectangle666713);
    universities.add(u3);

    University u4 =
        University("msg_cairo_universit".tr, ImageConstant.imgRectangle666714);
    universities.add(u4);

    University u5 =
        University("msg_alexandria_univ".tr, ImageConstant.imgRectangle666715);
    universities.add(u5);
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
                                    OnTapSettings(context, "university_fees");
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
                      Text("msg_select_universi".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtPoppinsMedium16Gray600
                              .copyWith(height: 1.00)),
                      Expanded(
                        child: ListView.builder(
                          physics: BouncingScrollPhysics(),
                          scrollDirection: Axis.vertical,
                          itemCount: universities.length,
                          itemBuilder: (BuildContext context, int index) {
                            return createUnversityButton(
                                universities[index].name,
                                universities[index].image_path);
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

  Widget createUnversityButton(String school_name, String img) {
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
    Get.toNamed(AppRoutes.universityPayLaterScreen);
  }

  onTapSchoolorUnive1() {
    Get.toNamed(AppRoutes.universityPayLaterScreen);
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
