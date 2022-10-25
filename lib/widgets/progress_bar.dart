import 'package:flutter/material.dart';
import 'package:omar_s_application2/core/utils/math_utils.dart';
import 'package:omar_s_application2/core/utils/color_constant.dart';
import 'package:colour/colour.dart';

class ProgressBar extends StatelessWidget {
  double? progress_indicator;

  void Function()? callback;

  ProgressBar({required this.progress_indicator, required this.callback});

  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: Alignment.centerLeft,
        child: Padding(
            padding: getPadding(left: 25, top: 40, right: 25, bottom: 40),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    child: FloatingActionButton(
                        backgroundColor: ColorConstant.gray100,
                        foregroundColor: Colour(0, 100, 254),
                        onPressed: callback,
                        child: Icon(
                          Icons.arrow_back_outlined,
                          size: 30,
                        )),
                  ),
                  SizedBox(
                    width: 175,
                    child: LinearProgressIndicator(
                      backgroundColor: Color(0xffabc9f8),
                      minHeight: 4,
                      value: progress_indicator,
                    ),
                  ),
                  SizedBox(
                    width: 50,
                  )
                ])));
  }
}
