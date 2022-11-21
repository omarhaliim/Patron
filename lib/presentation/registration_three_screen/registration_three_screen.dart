import 'controller/registration_three_controller.dart';
import 'package:flutter/material.dart';
import 'package:omar_s_application2/core/app_export.dart';
import 'package:omar_s_application2/widgets/custom_button.dart';
import 'package:colour/colour.dart';
import 'package:omar_s_application2/db/user.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:flutter/material.dart';
import 'package:omar_s_application2/core/app_export.dart';
import 'package:omar_s_application2/db/db_provider.dart';
import 'package:intl/intl.dart';
import 'dart:io';

import 'package:omar_s_application2/configs/image_picker_configs.dart';

/// Image model.
import 'package:omar_s_application2/models/image_object.dart';

/// Image utilities.
import 'package:omar_s_application2/utils/image_utils.dart';

/// Preset image editors
import 'package:omar_s_application2/widgets/image_picker/editors/editor_params.dart';
import 'package:omar_s_application2/widgets/image_picker/editors/image_edit.dart';
import 'package:omar_s_application2/widgets/image_picker/editors/image_filter.dart';
import 'package:omar_s_application2/widgets/image_picker/editors/image_sticker.dart';

/// Advanced image picker widget.
import 'package:omar_s_application2/widgets/image_picker/picker/image_picker.dart';

class RegistrationThreeScreen extends StatefulWidget {
  late final String FirstName;
  late final String LastName;
  late final String UserName;
  late final String Email;
  late final String Phone;
  late final String Password;

  RegistrationThreeScreen(this.FirstName, this.LastName, this.UserName,
      this.Email, this.Phone, this.Password);

  @override
  State<RegistrationThreeScreen> createState() => _RegistrationThreeScreenState(
      this.FirstName,
      this.LastName,
      this.UserName,
      this.Email,
      this.Phone,
      this.Password);
}

class _RegistrationThreeScreenState extends State<RegistrationThreeScreen> {
  late final String FirstName;
  late final String LastName;
  late final String UserName;
  late final String Email;
  late final String Phone;
  late final String Password;

  _RegistrationThreeScreenState(this.FirstName, this.LastName, this.UserName,
      this.Email, this.Phone, this.Password);
  List<ImageObject> _imgObjs = [];

  @override
  Widget build(BuildContext context) {
    // config here

    // Setup image picker configs
    final configs = ImagePickerConfigs();
    // AppBar text color
    configs.appBarTextColor = Colors.white;
    configs.appBarBackgroundColor = Colour(0, 100, 254);
    // Disable select images from album
    // configs.albumPickerModeEnabled = false;
    // Only use front camera for capturing
    // configs.cameraLensDirection = 0;
    // Translate function
    configs.translateFunc = (name, value) => Intl.message(value, name: name);
    // Disable edit function, then add other edit control instead
    configs.adjustFeatureEnabled = false;
    configs.externalImageEditors['external_image_editor_1'] = EditorParams(
        title: 'external_image_editor_1',
        icon: Icons.edit_rounded,
        onEditorEvent: (
                {required BuildContext context,
                required File file,
                required String title,
                int maxWidth = 1080,
                int maxHeight = 1920,
                int compressQuality = 90,
                ImagePickerConfigs? configs}) async =>
            Navigator.of(context).push(MaterialPageRoute(
                fullscreenDialog: true,
                builder: (context) => ImageEdit(
                    file: file,
                    title: title,
                    maxWidth: maxWidth,
                    maxHeight: maxHeight,
                    configs: configs))));
    configs.externalImageEditors['external_image_editor_2'] = EditorParams(
        title: 'external_image_editor_2',
        icon: Icons.edit_attributes,
        onEditorEvent: (
                {required BuildContext context,
                required File file,
                required String title,
                int maxWidth = 1080,
                int maxHeight = 1920,
                int compressQuality = 90,
                ImagePickerConfigs? configs}) async =>
            Navigator.of(context).push(MaterialPageRoute(
                fullscreenDialog: true,
                builder: (context) => ImageSticker(
                    file: file,
                    title: title,
                    maxWidth: maxWidth,
                    maxHeight: maxHeight,
                    configs: configs))));

    // Example about label detection & OCR extraction feature.
    // You can use Google ML Kit or TensorflowLite for this purpose
    configs.labelDetectFunc = (String path) async {
      return <DetectObject>[
        DetectObject(label: 'dummy1', confidence: 0.75),
        DetectObject(label: 'dummy2', confidence: 0.75),
        DetectObject(label: 'dummy3', confidence: 0.75)
      ];
    };
    configs.ocrExtractFunc =
        (String path, {bool? isCloudService = false}) async {
      if (isCloudService!) {
        return 'Cloud dummy ocr text';
      } else {
        return 'Dummy ocr text';
      }
    };

    // Example about custom stickers
    configs.customStickerOnly = true;
    configs.customStickers = [
      'assets/icon/cus1.png',
      'assets/icon/cus2.png',
      'assets/icon/cus3.png',
      'assets/icon/cus4.png',
      'assets/icon/cus5.png'
    ];

    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.blueA700,
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding:
                        getPadding(left: 25, top: 40, right: 25, bottom: 40),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                        SizedBox(
                          width: 175,
                          child: LinearProgressIndicator(
                            backgroundColor: Color(0xffabc9f8),
                            minHeight: 4,
                            value: 0.8,
                          ),
                        ),
                        SizedBox(
                          width: 50,
                        )
                      ],
                    ),
                  ),
                ),
                Text(
                  "Request a Patron Card".toUpperCase(),
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: getFontSize(
                      20,
                    ),
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                    height: 1.00,
                  ),
                ),
                Container(
                  width: double.infinity,
                  margin: getMargin(
                    left: 14,
                    top: 50,
                    right: 14,
                    bottom: 20,
                  ),
                  decoration: AppDecoration.fillWhiteA700.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder25,
                  ),
                  child: Column(
                    children: [
                      Container(
                        margin: getMargin(top: 40, left: 70, right: 70),
                        child: Text(
                          "msg_prepare_your_id".tr,
                          textAlign: TextAlign.center,
                          style: AppStyle.txtPoppinsSemiBold24Gray900.copyWith(
                            height: 1.08,
                          ),
                        ),
                      ),
                      Container(
                        margin: getMargin(
                          left: 25,
                          top: 25,
                          right: 25,
                        ),
                        child: Text(
                          "We need you to scan your front and back national ID",
                          maxLines: null,
                          textAlign: TextAlign.center,
                          style: AppStyle.txtPoppinsRegular16Gray700.copyWith(
                            height: 1.38,
                          ),
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 23,
                          top: 51,
                          right: 23,
                        ),
                        child: CommonImageView(
                          svgPath: ImageConstant.imgScaniconbox,
                          height: getSize(
                            200.00,
                          ),
                          width: getSize(
                            200.00,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 50, bottom: 10),
                        child: ElevatedButton(
                          child: Text('continue'.toUpperCase()),
                          onPressed: () {
                            onTapBtnScan();
                          },
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
              ],
            ),
          ),
        ),
      ),
    );
  }

  onTapBtnScan() async {
    // Get.toNamed(AppRoutes.registrationFourScreen);
    return Alert(
        type: AlertType.warning,
        context: context,
        title: "Kindly prepare the front side of your nationalID",
        buttons: [
          DialogButton(
            child: Text(
              "OK",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            onPressed: () => onTapOK(),
            color: Color.fromRGBO(0, 179, 134, 1.0),
          ),
        ]).show();

    // Get max 5 images
  }

  onTapOK() async {
    final List<ImageObject>? objects = await Navigator.of(context)
        .push(PageRouteBuilder(pageBuilder: (context, animation, __) {
      return ImagePicker(
          maxCount: 2,
          Phone: this.Phone,
          FirstName: this.FirstName,
          LastName: this.LastName,
          UserName: this.UserName,
          Email: this.Email,
          Password: this.Password);
    }));

    if ((objects?.length ?? 0) > 0) {
      setState(() {
        _imgObjs = objects!;
      });
    }
  }

  onTapImgArrowleft() {
    Get.back();
  }
}
