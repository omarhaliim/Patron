import 'package:flutter/material.dart';
import 'package:omar_s_application2/core/app_export.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.gray100,
        body: Column(
          children: [
            Expanded(
              child: Container(
                width: size.width,
                child: SingleChildScrollView(
                  child: Container(
                    margin: getMargin(
                      top: 35,
                      right: 1,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          width: double.infinity,
                          margin: getMargin(
                            left: 20,
                            right: 20,
                          ),
                          decoration: BoxDecoration(
                            color: ColorConstant.gray100,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Align(
                                alignment: Alignment.centerRight,
                                child: Padding(
                                  padding: getPadding(
                                    left: 266,
                                    right: 5,
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    crossAxisAlignment:
                                    CrossAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Padding(
                                        padding: getPadding(
                                          top: 2,
                                          bottom: 2,
                                        ),
                                        child: CommonImageView(
                                          svgPath: ImageConstant.imgMusic,
                                          height: getSize(
                                            20.00,
                                          ),
                                          width: getSize(
                                            20.00,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          left: 19,
                                          top: 1,
                                          right: 1,
                                          bottom: 1,
                                        ),
                                        child: CommonImageView(
                                          svgPath: ImageConstant.imgSettings,
                                          height: getSize(
                                            22.00,
                                          ),
                                          width: getSize(
                                            22.00,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding: getPadding(
                                    left: 5,
                                    top: 12,
                                    right: 10,
                                  ),
                                  child: Text(
                                    "Welcome,",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      color: ColorConstant.blueA700,
                                      fontSize: getFontSize(
                                        32,
                                      ),
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w500,
                                      height: 1.00,
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding: getPadding(
                                    left: 5,
                                    top: 1,
                                    right: 10,
                                  ),
                                  child: Text(
                                    "Mohamed Shaker",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      color: ColorConstant.gray600,
                                      fontSize: getFontSize(
                                        16,
                                      ),
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w500,
                                      height: 1.00,
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Container(
                                  margin: getMargin(
                                    left: 5,
                                    top: 26,
                                    right: 10,
                                  ),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(
                                      getHorizontalSize(
                                        16.00,
                                      ),
                                    ),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                    CrossAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: getPadding(
                                          top: 7,
                                          bottom: 8,
                                        ),
                                        child: Text(
                                          "Available Balance",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                            color: ColorConstant.black900,
                                            fontSize: getFontSize(
                                              16,
                                            ),
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w500,
                                            height: 1.00,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          left: 13,
                                          top: 8,
                                          bottom: 8,
                                        ),
                                        child: CommonImageView(
                                          svgPath: ImageConstant.imgLock,
                                          height: getVerticalSize(
                                            16.00,
                                          ),
                                          width: getHorizontalSize(
                                            29.00,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.center,
                                child: Container(
                                  height: getVerticalSize(
                                    170.00,
                                  ),
                                  width: getHorizontalSize(
                                    330.00,
                                  ),
                                  margin: getMargin(
                                    left: 3,
                                    top: 34,
                                  ),
                                  decoration: BoxDecoration(),
                                  child: Stack(
                                    alignment: Alignment.centerLeft,
                                    children: [
                                      Align(
                                        alignment: Alignment.center,
                                        child: Container(
                                          height: getVerticalSize(
                                            136.00,
                                          ),
                                          width: getHorizontalSize(
                                            326.00,
                                          ),
                                          margin: getMargin(
                                            right: 4,
                                          ),
                                          decoration: BoxDecoration(),
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: Row(
                                          crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            GestureDetector(
                                              onTap: () { OnTapTutionFees(); },

                                              child: Container(
                                                decoration: BoxDecoration(
                                                  color: ColorConstant.whiteA700,
                                                ),
                                                child: Column(

                                                  mainAxisSize: MainAxisSize.min,
                                                  crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                                  mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                                  children: [
                                                    Padding(
                                                      padding: getPadding(
                                                        left: 18,
                                                        top: 29,
                                                        right: 18,
                                                      ),
                                                      child: CommonImageView(
                                                        svgPath: ImageConstant
                                                            .imgVector
                                                        ,
                                                        height: getVerticalSize(
                                                          26.00,
                                                        ),
                                                        width: getHorizontalSize(
                                                          24.00,
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      width: getHorizontalSize(
                                                        62.00,
                                                      ),
                                                      margin: getMargin(
                                                        left: 14,
                                                        top: 12,
                                                        right: 14,
                                                        bottom: 17,
                                                      ),
                                                      child: Text(
                                                        "Tution \n Fees",
                                                        maxLines: null,
                                                        textAlign: TextAlign.left,
                                                        style: TextStyle(
                                                          color: ColorConstant
                                                              .black900,
                                                          fontSize: getFontSize(
                                                            20,
                                                          ),
                                                          fontFamily: 'Poppins',
                                                          fontWeight:
                                                          FontWeight.w400,
                                                          height: 1.27,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            GestureDetector(
                                                onTap: () { OnTapAddMoney(); },

                                              child: Container(
                                                margin: getMargin(
                                                  left: 15,
                                                ),
                                                decoration: BoxDecoration(
                                                  color: ColorConstant.black900,
                                                ),
                                                child: Column(
                                                  mainAxisSize: MainAxisSize.min,
                                                  mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                                  children: [
                                                    Align(
                                                      alignment:
                                                      Alignment.centerLeft,
                                                      child: Padding(
                                                        padding: getPadding(
                                                          left: 19,
                                                          top: 33,
                                                          right: 19,
                                                        ),
                                                        child: CommonImageView(
                                                          svgPath: ImageConstant
                                                              .imgPlus,
                                                          height: getSize(
                                                            18.00,
                                                          ),
                                                          width: getSize(
                                                            18.00,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Align(
                                                      alignment: Alignment.center,
                                                      child: Container(
                                                        width: getHorizontalSize(
                                                          70.00,
                                                        ),
                                                        margin: getMargin(
                                                          left: 13,
                                                          top: 16,
                                                          right: 13,
                                                          bottom: 14,
                                                        ),
                                                        child: Text(
                                                          "Add Money",
                                                          maxLines: null,
                                                          textAlign:
                                                          TextAlign.left,
                                                          style: TextStyle(
                                                            color: ColorConstant
                                                                .whiteA700,
                                                            fontSize: getFontSize(
                                                              20,
                                                            ),
                                                            fontFamily: 'Poppins',
                                                            fontWeight:
                                                            FontWeight.w400,
                                                            height: 1.27,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            GestureDetector(
                                              onTap: () { OnTapAddCard(); },

                                              child: Container(
                                                margin: getMargin(
                                                  left: 15,
                                                ),
                                                decoration: BoxDecoration(
                                                  color: ColorConstant.blueA700,
                                                ),
                                                child: Column(
                                                  mainAxisSize: MainAxisSize.min,
                                                  crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                                  mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                                  children: [
                                                    Padding(
                                                      padding: getPadding(
                                                        left: 14,
                                                        top: 32,
                                                        right: 14,
                                                      ),
                                                      child: CommonImageView(
                                                        svgPath: ImageConstant
                                                            .imgComputer21X29,
                                                        height: getVerticalSize(
                                                          21.00,
                                                        ),
                                                        width: getHorizontalSize(
                                                          29.00,
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      width: getHorizontalSize(
                                                        51.00,
                                                      ),
                                                      margin: getMargin(
                                                        left: 13,
                                                        top: 15,
                                                        right: 13,
                                                        bottom: 17,
                                                      ),
                                                      child: Text(
                                                        "Add Card",
                                                        maxLines: null,
                                                        textAlign: TextAlign.left,
                                                        style: TextStyle(
                                                          color: ColorConstant
                                                              .whiteA700,
                                                          fontSize: getFontSize(
                                                            20,
                                                          ),
                                                          fontFamily: 'Poppins',
                                                          fontWeight:
                                                          FontWeight.w400,
                                                          height: 1.27,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding: getPadding(
                                    left: 5,
                                    top: 27,
                                    right: 10,
                                  ),
                                  child: Text(
                                    "Card Activity",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      color: ColorConstant.gray600,
                                      fontSize: getFontSize(
                                        16,
                                      ),
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w500,
                                      height: 1.00,
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                  alignment: Alignment.center,
                                      child : Container(
                                          height: getVerticalSize(
                                            300.00,
                                          ),
                                          width: getHorizontalSize(
                                            330.00,
                                          ),
                                          margin: getMargin(
                                            top: 13,
                                            right: 3,
                                          ),
                                        decoration: BoxDecoration(
                                          color: ColorConstant.whiteA700,
                                          borderRadius: BorderRadius.circular(
                                            getHorizontalSize(
                                              16.00,
                                            ),
                                          ),
                                        ),
                                        child: Expanded(
                                          child: SingleChildScrollView(
                                            scrollDirection: Axis.vertical,
                                            child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                              mainAxisAlignment:
                                              MainAxisAlignment.end,
                                              children: [
                                                Padding(
                                                  padding: getPadding(
                                                    left: 16,
                                                    top: 17,
                                                    right: 7,
                                                  ),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                    crossAxisAlignment:
                                                    CrossAxisAlignment.end,
                                                    mainAxisSize:
                                                    MainAxisSize.max,
                                                    children: [
                                                      Container(
                                                        child: Column(
                                                          mainAxisSize:
                                                          MainAxisSize.min,
                                                          crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                          mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                          children: [
                                                            Text(
                                                              "Transfer To Ahmed",
                                                              overflow:
                                                              TextOverflow
                                                                  .ellipsis,
                                                              textAlign:
                                                              TextAlign.left,
                                                              style: TextStyle(
                                                                color:
                                                                ColorConstant
                                                                    .black900,
                                                                fontSize:
                                                                getFontSize(
                                                                  13,
                                                                ),
                                                                fontFamily:
                                                                'Hiragino Kaku Gothic Pro',
                                                                fontWeight:
                                                                FontWeight
                                                                    .w400,
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding: getPadding(
                                                                top: 10,
                                                                right: 10,
                                                              ),
                                                              child: Text(
                                                                "2022.05.04",
                                                                overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                                textAlign:
                                                                TextAlign
                                                                    .left,
                                                                style: TextStyle(
                                                                  color: ColorConstant
                                                                      .bluegray400,
                                                                  fontSize:
                                                                  getFontSize(
                                                                    10,
                                                                  ),
                                                                  fontFamily:
                                                                  'Hiragino Kaku Gothic Pro',
                                                                  fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding: getPadding(
                                                          top: 13,
                                                          bottom: 4,
                                                        ),
                                                        child: Text(
                                                          "-2,500 EGP",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                          TextAlign.left,
                                                          style: TextStyle(
                                                            color: ColorConstant
                                                                .black900,
                                                            fontSize: getFontSize(
                                                              15,
                                                            ),
                                                            fontFamily:
                                                            'SF Pro Text',
                                                            fontWeight:
                                                            FontWeight.w400,
                                                            letterSpacing: 0.15,
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Container(
                                                  width: double.infinity,
                                                  margin: getMargin(
                                                    left: 1,
                                                    top: 21,
                                                  ),
                                                  decoration: BoxDecoration(
                                                    color: ColorConstant.gray200,
                                                  ),
                                                  child: Column(
                                                    mainAxisSize:
                                                    MainAxisSize.min,
                                                    crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                    mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                    children: [
                                                      Container(
                                                        height: getVerticalSize(
                                                          1.00,
                                                        ),
                                                        width: getHorizontalSize(
                                                          276.00,
                                                        ),
                                                        margin: getMargin(
                                                          left: 17,
                                                          top: 1,
                                                          right: 16,
                                                        ),
                                                        decoration: BoxDecoration(
                                                          color: ColorConstant
                                                              .black900,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Padding(
                                                  padding: getPadding(
                                                    left: 16,
                                                    top: 17,
                                                    right: 7,
                                                  ),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                    crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                    mainAxisSize:
                                                    MainAxisSize.max,
                                                    children: [
                                                      Container(
                                                        child: Column(
                                                          mainAxisSize:
                                                          MainAxisSize.min,
                                                          crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                          mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                          children: [
                                                            Text(
                                                              "Starbucks",
                                                              overflow:
                                                              TextOverflow
                                                                  .ellipsis,
                                                              textAlign:
                                                              TextAlign.left,
                                                              style: TextStyle(
                                                                color:
                                                                ColorConstant
                                                                    .black900,
                                                                fontSize:
                                                                getFontSize(
                                                                  13,
                                                                ),
                                                                fontFamily:
                                                                'Hiragino Kaku Gothic Pro',
                                                                fontWeight:
                                                                FontWeight
                                                                    .w400,
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding: getPadding(
                                                                top: 10,
                                                                right: 8,
                                                              ),
                                                              child: Text(
                                                                "2022.05.04",
                                                                overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                                textAlign:
                                                                TextAlign
                                                                    .left,
                                                                style: TextStyle(
                                                                  color: ColorConstant
                                                                      .bluegray400,
                                                                  fontSize:
                                                                  getFontSize(
                                                                    10,
                                                                  ),
                                                                  fontFamily:
                                                                  'Hiragino Kaku Gothic Pro',
                                                                  fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding: getPadding(
                                                          top: 11,
                                                          bottom: 6,
                                                        ),
                                                        child: Text(
                                                          "-195 EGP",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                          TextAlign.left,
                                                          style: TextStyle(
                                                            color: ColorConstant
                                                                .black900,
                                                            fontSize: getFontSize(
                                                              15,
                                                            ),
                                                            fontFamily:
                                                            'SF Pro Text',
                                                            fontWeight:
                                                            FontWeight.w400,
                                                            letterSpacing: 0.15,
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Container(
                                                  width: double.infinity,
                                                  margin: getMargin(
                                                    left: 1,
                                                    top: 21,
                                                  ),
                                                  decoration: BoxDecoration(
                                                    color: ColorConstant.gray200,
                                                  ),
                                                  child: Column(
                                                    mainAxisSize:
                                                    MainAxisSize.min,
                                                    crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                    mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                    children: [
                                                      Container(
                                                        height: getVerticalSize(
                                                          1.00,
                                                        ),
                                                        width: getHorizontalSize(
                                                          276.00,
                                                        ),
                                                        margin: getMargin(
                                                          left: 17,
                                                          top: 1,
                                                          right: 16,
                                                        ),
                                                        decoration: BoxDecoration(
                                                          color: ColorConstant
                                                              .black900,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Padding(
                                                  padding: getPadding(
                                                    left: 16,
                                                    top: 17,
                                                    right: 7,
                                                  ),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                    crossAxisAlignment:
                                                    CrossAxisAlignment.end,
                                                    mainAxisSize:
                                                    MainAxisSize.max,
                                                    children: [
                                                      Container(
                                                        child: Column(
                                                          mainAxisSize:
                                                          MainAxisSize.min,
                                                          crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                          mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                          children: [
                                                            Text(
                                                              "Transfer From Omar",
                                                              overflow:
                                                              TextOverflow
                                                                  .ellipsis,
                                                              textAlign:
                                                              TextAlign.left,
                                                              style: TextStyle(
                                                                color:
                                                                ColorConstant
                                                                    .black900,
                                                                fontSize:
                                                                getFontSize(
                                                                  13,
                                                                ),
                                                                fontFamily:
                                                                'Hiragino Kaku Gothic Pro',
                                                                fontWeight:
                                                                FontWeight
                                                                    .w400,
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding: getPadding(
                                                                top: 10,
                                                                right: 10,
                                                              ),
                                                              child: Text(
                                                                "2022.05.04",
                                                                overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                                textAlign:
                                                                TextAlign
                                                                    .left,
                                                                style: TextStyle(
                                                                  color: ColorConstant
                                                                      .bluegray400,
                                                                  fontSize:
                                                                  getFontSize(
                                                                    10,
                                                                  ),
                                                                  fontFamily:
                                                                  'Hiragino Kaku Gothic Pro',
                                                                  fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding: getPadding(
                                                          top: 13,
                                                          bottom: 4,
                                                        ),
                                                        child: Text(
                                                          "+2,000 EGP",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                          TextAlign.left,
                                                          style: TextStyle(
                                                            color: ColorConstant
                                                                .black900,
                                                            fontSize: getFontSize(
                                                              15,
                                                            ),
                                                            fontFamily:
                                                            'SF Pro Text',
                                                            fontWeight:
                                                            FontWeight.w400,
                                                            letterSpacing: 0.15,
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Container(
                                                  width: double.infinity,
                                                  margin: getMargin(
                                                    left: 1,
                                                    top: 21,
                                                  ),
                                                  decoration: BoxDecoration(
                                                    color: ColorConstant.gray200,
                                                  ),
                                                  child: Column(
                                                    mainAxisSize:
                                                    MainAxisSize.min,
                                                    crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                    mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                    children: [
                                                      Container(
                                                        height: getVerticalSize(
                                                          1.00,
                                                        ),
                                                        width: getHorizontalSize(
                                                          276.00,
                                                        ),
                                                        margin: getMargin(
                                                          left: 17,
                                                          top: 1,
                                                          right: 16,
                                                        ),
                                                        decoration: BoxDecoration(
                                                          color: ColorConstant
                                                              .black900,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Padding(
                                                  padding: getPadding(
                                                    left: 16,
                                                    top: 17,
                                                    right: 7,
                                                  ),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                    crossAxisAlignment:
                                                    CrossAxisAlignment.end,
                                                    mainAxisSize:
                                                    MainAxisSize.max,
                                                    children: [
                                                      Container(
                                                        margin: getMargin(
                                                          bottom: 5,
                                                        ),
                                                        child: Column(
                                                          mainAxisSize:
                                                          MainAxisSize.min,
                                                          crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                          mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                          children: [
                                                            Text(
                                                              "Second Installment - MSE",
                                                              overflow:
                                                              TextOverflow
                                                                  .ellipsis,
                                                              textAlign:
                                                              TextAlign.left,
                                                              style: TextStyle(
                                                                color:
                                                                ColorConstant
                                                                    .black900,
                                                                fontSize:
                                                                getFontSize(
                                                                  13,
                                                                ),
                                                                fontFamily:
                                                                'Hiragino Kaku Gothic Pro',
                                                                fontWeight:
                                                                FontWeight
                                                                    .w400,
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding: getPadding(
                                                                top: 10,
                                                                right: 10,
                                                              ),
                                                              child: Text(
                                                                "2022.05.04",
                                                                overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                                textAlign:
                                                                TextAlign
                                                                    .left,
                                                                style: TextStyle(
                                                                  color: ColorConstant
                                                                      .bluegray400,
                                                                  fontSize:
                                                                  getFontSize(
                                                                    10,
                                                                  ),
                                                                  fontFamily:
                                                                  'Hiragino Kaku Gothic Pro',
                                                                  fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding: getPadding(
                                                          top: 13,
                                                          bottom: 9,
                                                        ),
                                                        child: Text(
                                                          "-12,000 EGP",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                          TextAlign.left,
                                                          style: TextStyle(
                                                            color: ColorConstant
                                                                .black900,
                                                            fontSize: getFontSize(
                                                              15,
                                                            ),
                                                            fontFamily:
                                                            'SF Pro Text',
                                                            fontWeight:
                                                            FontWeight.w400,
                                                            letterSpacing: 0.15,
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Container(
                                                  width: double.infinity,
                                                  margin: getMargin(
                                                    left: 1,
                                                    top: 88,
                                                  ),
                                                  decoration: BoxDecoration(
                                                    color: ColorConstant.gray200,
                                                  ),
                                                  child: Column(
                                                    mainAxisSize:
                                                    MainAxisSize.min,
                                                    crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                    mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                    children: [
                                                      Container(
                                                        height: getVerticalSize(
                                                          1.00,
                                                        ),
                                                        width: getHorizontalSize(
                                                          276.00,
                                                        ),
                                                        margin: getMargin(
                                                          left: 17,
                                                          top: 1,
                                                          right: 16,
                                                        ),
                                                        decoration: BoxDecoration(
                                                          color: ColorConstant
                                                              .black900,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Padding(
                                                  padding: getPadding(
                                                    left: 16,
                                                    top: 17,
                                                    right: 7,
                                                  ),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                    crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                    mainAxisSize:
                                                    MainAxisSize.max,
                                                    children: [
                                                      Container(
                                                        child: Column(
                                                          mainAxisSize:
                                                          MainAxisSize.min,
                                                          crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                          mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                          children: [
                                                            Text(
                                                              "Transfer From Ahmed",
                                                              overflow:
                                                              TextOverflow
                                                                  .ellipsis,
                                                              textAlign:
                                                              TextAlign.left,
                                                              style: TextStyle(
                                                                color:
                                                                ColorConstant
                                                                    .black900,
                                                                fontSize:
                                                                getFontSize(
                                                                  13,
                                                                ),
                                                                fontFamily:
                                                                'Hiragino Kaku Gothic Pro',
                                                                fontWeight:
                                                                FontWeight
                                                                    .w400,
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding: getPadding(
                                                                top: 3,
                                                                right: 10,
                                                              ),
                                                              child: Text(
                                                                "2022.05.04",
                                                                overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                                textAlign:
                                                                TextAlign
                                                                    .left,
                                                                style: TextStyle(
                                                                  color: ColorConstant
                                                                      .bluegray400,
                                                                  fontSize:
                                                                  getFontSize(
                                                                    10,
                                                                  ),
                                                                  fontFamily:
                                                                  'Hiragino Kaku Gothic Pro',
                                                                  fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding: getPadding(
                                                          top: 10,
                                                          bottom: 9,
                                                        ),
                                                        child: Text(
                                                          "+2,500 EGP",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                          TextAlign.right,
                                                          style: TextStyle(
                                                            color: ColorConstant
                                                                .black900,
                                                            fontSize: getFontSize(
                                                              15,
                                                            ),
                                                            fontFamily:
                                                            'SF Pro Text',
                                                            fontWeight:
                                                            FontWeight.w400,
                                                            letterSpacing: 0.15,
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Container(
                                                  width: double.infinity,
                                                  margin: getMargin(
                                                    left: 1,
                                                    top: 16,
                                                  ),
                                                  decoration: BoxDecoration(
                                                    color: ColorConstant.gray200,
                                                  ),
                                                  child: Column(
                                                    mainAxisSize:
                                                    MainAxisSize.min,
                                                    crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                    mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                    children: [
                                                      Container(
                                                        height: getVerticalSize(
                                                          1.00,
                                                        ),
                                                        width: getHorizontalSize(
                                                          276.00,
                                                        ),
                                                        margin: getMargin(
                                                          left: 17,
                                                          top: 1,
                                                          right: 16,
                                                        ),
                                                        decoration: BoxDecoration(
                                                          color: ColorConstant
                                                              .black900,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Padding(
                                                  padding: getPadding(
                                                    left: 16,
                                                    top: 17,
                                                    right: 7,
                                                  ),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                    crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                    mainAxisSize:
                                                    MainAxisSize.max,
                                                    children: [
                                                      Container(
                                                        child: Column(
                                                          mainAxisSize:
                                                          MainAxisSize.min,
                                                          crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                          mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                          children: [
                                                            Text(
                                                              "Water Bill",
                                                              overflow:
                                                              TextOverflow
                                                                  .ellipsis,
                                                              textAlign:
                                                              TextAlign.left,
                                                              style: TextStyle(
                                                                color:
                                                                ColorConstant
                                                                    .black900,
                                                                fontSize:
                                                                getFontSize(
                                                                  13,
                                                                ),
                                                                fontFamily:
                                                                'Hiragino Kaku Gothic Pro',
                                                                fontWeight:
                                                                FontWeight
                                                                    .w400,
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding: getPadding(
                                                                top: 3,
                                                                right: 4,
                                                              ),
                                                              child: Text(
                                                                "2022.05.04",
                                                                overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                                textAlign:
                                                                TextAlign
                                                                    .left,
                                                                style: TextStyle(
                                                                  color: ColorConstant
                                                                      .bluegray400,
                                                                  fontSize:
                                                                  getFontSize(
                                                                    10,
                                                                  ),
                                                                  fontFamily:
                                                                  'Hiragino Kaku Gothic Pro',
                                                                  fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding: getPadding(
                                                          top: 10,
                                                          bottom: 9,
                                                        ),
                                                        child: Text(
                                                          "-1,200 EGP",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                          TextAlign.right,
                                                          style: TextStyle(
                                                            color: ColorConstant
                                                                .black900,
                                                            fontSize: getFontSize(
                                                              15,
                                                            ),
                                                            fontFamily:
                                                            'SF Pro Text',
                                                            fontWeight:
                                                            FontWeight.w400,
                                                            letterSpacing: 0.15,
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Container(
                                                  width: double.infinity,
                                                  margin: getMargin(
                                                    left: 1,
                                                    top: 16,
                                                  ),
                                                  decoration: BoxDecoration(
                                                    color: ColorConstant.gray200,
                                                  ),
                                                  child: Column(
                                                    mainAxisSize:
                                                    MainAxisSize.min,
                                                    crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                    mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                    children: [
                                                      Container(
                                                        height: getVerticalSize(
                                                          1.00,
                                                        ),
                                                        width: getHorizontalSize(
                                                          276.00,
                                                        ),
                                                        margin: getMargin(
                                                          left: 17,
                                                          top: 1,
                                                          right: 16,
                                                        ),
                                                        decoration: BoxDecoration(
                                                          color: ColorConstant
                                                              .black900,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Padding(
                                                  padding: getPadding(
                                                    left: 16,
                                                    top: 17,
                                                    right: 7,
                                                  ),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                    crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                    mainAxisSize:
                                                    MainAxisSize.max,
                                                    children: [
                                                      Container(
                                                        child: Column(
                                                          mainAxisSize:
                                                          MainAxisSize.min,
                                                          crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                          mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                          children: [
                                                            Text(
                                                              "Vodafone Bill",
                                                              overflow:
                                                              TextOverflow
                                                                  .ellipsis,
                                                              textAlign:
                                                              TextAlign.left,
                                                              style: TextStyle(
                                                                color:
                                                                ColorConstant
                                                                    .black900,
                                                                fontSize:
                                                                getFontSize(
                                                                  13,
                                                                ),
                                                                fontFamily:
                                                                'Hiragino Kaku Gothic Pro',
                                                                fontWeight:
                                                                FontWeight
                                                                    .w400,
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding: getPadding(
                                                                top: 3,
                                                                right: 10,
                                                              ),
                                                              child: Text(
                                                                "2022.05.04",
                                                                overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                                textAlign:
                                                                TextAlign
                                                                    .left,
                                                                style: TextStyle(
                                                                  color: ColorConstant
                                                                      .bluegray400,
                                                                  fontSize:
                                                                  getFontSize(
                                                                    10,
                                                                  ),
                                                                  fontFamily:
                                                                  'Hiragino Kaku Gothic Pro',
                                                                  fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding: getPadding(
                                                          top: 10,
                                                          bottom: 9,
                                                        ),
                                                        child: Text(
                                                          "-680 EGP",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                          TextAlign.right,
                                                          style: TextStyle(
                                                            color: ColorConstant
                                                                .black900,
                                                            fontSize: getFontSize(
                                                              15,
                                                            ),
                                                            fontFamily:
                                                            'SF Pro Text',
                                                            fontWeight:
                                                            FontWeight.w400,
                                                            letterSpacing: 0.15,
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Container(
                                                  width: double.infinity,
                                                  margin: getMargin(
                                                    left: 1,
                                                    top: 16,
                                                  ),
                                                  decoration: BoxDecoration(
                                                    color: ColorConstant.gray200,
                                                  ),
                                                  child: Column(
                                                    mainAxisSize:
                                                    MainAxisSize.min,
                                                    crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                    mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                    children: [
                                                      Container(
                                                        height: getVerticalSize(
                                                          1.00,
                                                        ),
                                                        width: getHorizontalSize(
                                                          276.00,
                                                        ),
                                                        margin: getMargin(
                                                          left: 17,
                                                          top: 1,
                                                          right: 16,
                                                        ),
                                                        decoration: BoxDecoration(
                                                          color: ColorConstant
                                                              .black900,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Padding(
                                                  padding: getPadding(
                                                    left: 16,
                                                    top: 17,
                                                    right: 7,
                                                  ),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                    crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                    mainAxisSize:
                                                    MainAxisSize.max,
                                                    children: [
                                                      Container(
                                                        child: Column(
                                                          mainAxisSize:
                                                          MainAxisSize.min,
                                                          crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                          mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                          children: [
                                                            Text(
                                                              "Internet Bill",
                                                              overflow:
                                                              TextOverflow
                                                                  .ellipsis,
                                                              textAlign:
                                                              TextAlign.left,
                                                              style: TextStyle(
                                                                color:
                                                                ColorConstant
                                                                    .black900,
                                                                fontSize:
                                                                getFontSize(
                                                                  13,
                                                                ),
                                                                fontFamily:
                                                                'Hiragino Kaku Gothic Pro',
                                                                fontWeight:
                                                                FontWeight
                                                                    .w400,
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding: getPadding(
                                                                top: 3,
                                                                right: 10,
                                                              ),
                                                              child: Text(
                                                                "2022.05.02",
                                                                overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                                textAlign:
                                                                TextAlign
                                                                    .left,
                                                                style: TextStyle(
                                                                  color: ColorConstant
                                                                      .bluegray400,
                                                                  fontSize:
                                                                  getFontSize(
                                                                    10,
                                                                  ),
                                                                  fontFamily:
                                                                  'Hiragino Kaku Gothic Pro',
                                                                  fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding: getPadding(
                                                          top: 10,
                                                          bottom: 9,
                                                        ),
                                                        child: Text(
                                                          "-475 EGP",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                          TextAlign.right,
                                                          style: TextStyle(
                                                            color: ColorConstant
                                                                .black900,
                                                            fontSize: getFontSize(
                                                              15,
                                                            ),
                                                            fontFamily:
                                                            'SF Pro Text',
                                                            fontWeight:
                                                            FontWeight.w400,
                                                            letterSpacing: 0.15,
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Padding(
                                                  padding: getPadding(
                                                    left: 1,
                                                    top: 16,
                                                  ),
                                                  child: CommonImageView(
                                                    svgPath: ImageConstant
                                                        .imgBackground,
                                                    height: getVerticalSize(
                                                      1.00,
                                                    ),
                                                    width: getHorizontalSize(
                                                      309.00,
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: getPadding(
                                                    left: 16,
                                                    top: 17,
                                                    right: 7,
                                                  ),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                    crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                    mainAxisSize:
                                                    MainAxisSize.max,
                                                    children: [
                                                      Container(
                                                        child: Column(
                                                          mainAxisSize:
                                                          MainAxisSize.min,
                                                          crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                          mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                          children: [
                                                            Text(
                                                              "Electricity Re-Charge",
                                                              overflow:
                                                              TextOverflow
                                                                  .ellipsis,
                                                              textAlign:
                                                              TextAlign.left,
                                                              style: TextStyle(
                                                                color:
                                                                ColorConstant
                                                                    .black900,
                                                                fontSize:
                                                                getFontSize(
                                                                  13,
                                                                ),
                                                                fontFamily:
                                                                'Hiragino Kaku Gothic Pro',
                                                                fontWeight:
                                                                FontWeight
                                                                    .w400,
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding: getPadding(
                                                                top: 3,
                                                                right: 10,
                                                              ),
                                                              child: Text(
                                                                "2022.05.03",
                                                                overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                                textAlign:
                                                                TextAlign
                                                                    .left,
                                                                style: TextStyle(
                                                                  color: ColorConstant
                                                                      .bluegray400,
                                                                  fontSize:
                                                                  getFontSize(
                                                                    10,
                                                                  ),
                                                                  fontFamily:
                                                                  'Hiragino Kaku Gothic Pro',
                                                                  fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding: getPadding(
                                                          top: 10,
                                                          bottom: 9,
                                                        ),
                                                        child: Text(
                                                          "-1,500 EGP",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                          TextAlign.right,
                                                          style: TextStyle(
                                                            color: ColorConstant
                                                                .black900,
                                                            fontSize: getFontSize(
                                                              15,
                                                            ),
                                                            fontFamily:
                                                            'SF Pro Text',
                                                            fontWeight:
                                                            FontWeight.w400,
                                                            letterSpacing: 0.15,
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Padding(
                                                  padding: getPadding(
                                                    left: 1,
                                                    top: 16,
                                                  ),
                                                  child: CommonImageView(
                                                    svgPath: ImageConstant
                                                        .imgBackground,
                                                    height: getVerticalSize(
                                                      1.00,
                                                    ),
                                                    width: getHorizontalSize(
                                                      309.00,
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: getPadding(
                                                    left: 16,
                                                    top: 17,
                                                    right: 7,
                                                  ),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                    crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                    mainAxisSize:
                                                    MainAxisSize.max,
                                                    children: [
                                                      Container(
                                                        child: Column(
                                                          mainAxisSize:
                                                          MainAxisSize.min,
                                                          crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                          mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                          children: [
                                                            Text(
                                                              "Netflix Subscription",
                                                              overflow:
                                                              TextOverflow
                                                                  .ellipsis,
                                                              textAlign:
                                                              TextAlign.left,
                                                              style: TextStyle(
                                                                color:
                                                                ColorConstant
                                                                    .black900,
                                                                fontSize:
                                                                getFontSize(
                                                                  13,
                                                                ),
                                                                fontFamily:
                                                                'Hiragino Kaku Gothic Pro',
                                                                fontWeight:
                                                                FontWeight
                                                                    .w400,
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding: getPadding(
                                                                top: 3,
                                                                right: 10,
                                                              ),
                                                              child: Text(
                                                                "2022.05.03",
                                                                overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                                textAlign:
                                                                TextAlign
                                                                    .left,
                                                                style: TextStyle(
                                                                  color: ColorConstant
                                                                      .bluegray400,
                                                                  fontSize:
                                                                  getFontSize(
                                                                    10,
                                                                  ),
                                                                  fontFamily:
                                                                  'Hiragino Kaku Gothic Pro',
                                                                  fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding: getPadding(
                                                          top: 10,
                                                          bottom: 9,
                                                        ),
                                                        child: Text(
                                                          "-200 EGP",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                          TextAlign.right,
                                                          style: TextStyle(
                                                            color: ColorConstant
                                                                .black900,
                                                            fontSize: getFontSize(
                                                              15,
                                                            ),
                                                            fontFamily:
                                                            'SF Pro Text',
                                                            fontWeight:
                                                            FontWeight.w400,
                                                            letterSpacing: 0.15,
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Padding(
                                                  padding: getPadding(
                                                    left: 1,
                                                    top: 16,
                                                  ),
                                                  child: CommonImageView(
                                                    svgPath: ImageConstant
                                                        .imgBackground,
                                                    height: getVerticalSize(
                                                      1.00,
                                                    ),
                                                    width: getHorizontalSize(
                                                      309.00,
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: getPadding(
                                                    left: 16,
                                                    top: 17,
                                                    right: 7,
                                                  ),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                    crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                    mainAxisSize:
                                                    MainAxisSize.max,
                                                    children: [
                                                      Container(
                                                        child: Column(
                                                          mainAxisSize:
                                                          MainAxisSize.min,
                                                          crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                          mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                          children: [
                                                            Text(
                                                              "Shahid Subscription",
                                                              overflow:
                                                              TextOverflow
                                                                  .ellipsis,
                                                              textAlign:
                                                              TextAlign.left,
                                                              style: TextStyle(
                                                                color:
                                                                ColorConstant
                                                                    .black900,
                                                                fontSize:
                                                                getFontSize(
                                                                  13,
                                                                ),
                                                                fontFamily:
                                                                'Hiragino Kaku Gothic Pro',
                                                                fontWeight:
                                                                FontWeight
                                                                    .w400,
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding: getPadding(
                                                                top: 3,
                                                                right: 10,
                                                              ),
                                                              child: Text(
                                                                "2022.04.30",
                                                                overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                                textAlign:
                                                                TextAlign
                                                                    .left,
                                                                style: TextStyle(
                                                                  color: ColorConstant
                                                                      .bluegray400,
                                                                  fontSize:
                                                                  getFontSize(
                                                                    10,
                                                                  ),
                                                                  fontFamily:
                                                                  'Hiragino Kaku Gothic Pro',
                                                                  fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding: getPadding(
                                                          top: 10,
                                                          bottom: 9,
                                                        ),
                                                        child: Text(
                                                          "-100 EGP",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                          TextAlign.right,
                                                          style: TextStyle(
                                                            color: ColorConstant
                                                                .black900,
                                                            fontSize: getFontSize(
                                                              15,
                                                            ),
                                                            fontFamily:
                                                            'SF Pro Text',
                                                            fontWeight:
                                                            FontWeight.w400,
                                                            letterSpacing: 0.15,
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Container(
                                                  height: getVerticalSize(
                                                    1.00,
                                                  ),
                                                  width: getHorizontalSize(
                                                    276.00,
                                                  ),
                                                  margin: getMargin(
                                                    left: 16,
                                                    top: 17,
                                                    right: 16,
                                                  ),
                                                  decoration: BoxDecoration(
                                                    color: ColorConstant.black900,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          )

                                          ),
                              )
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(
                    getHorizontalSize(
                      20.00,
                    ),
                  ),
                  topRight: Radius.circular(
                    getHorizontalSize(
                      20.00,
                    ),
                  ),
                ),
              ),
              child: Padding(
                padding: getPadding(
                  top: 27,
                  bottom: 27,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: getPadding(
                        top: 2,
                        bottom: 2,
                      ),
                      child: CommonImageView(
                        svgPath: ImageConstant.imgHome,
                        height: getVerticalSize(
                          26.00,
                        ),
                        width: getHorizontalSize(
                          24.00,
                        ),
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        top: 1,
                        bottom: 1,
                      ),
                      child: CommonImageView(
                        svgPath: ImageConstant.imgRefresh,
                        height: getVerticalSize(
                          29.00,
                        ),
                        width: getHorizontalSize(
                          24.00,
                        ),
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        top: 5,
                        bottom: 5,
                      ),
                      child: CommonImageView(
                        svgPath: ImageConstant.imgSave,
                        height: getVerticalSize(
                          21.00,
                        ),
                        width: getHorizontalSize(
                          29.00,
                        ),
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
  OnTapTutionFees() {
    Get.toNamed(AppRoutes.tutionFeesScreen);
  }
  OnTapAddMoney() {
    Get.toNamed(AppRoutes.addMoneyScreen);
  }
  OnTapAddCard() {
    Get.toNamed(AppRoutes.addCardScreen);
  }
}
