import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:omar_s_application2/presentation/splash_screen/splash_screen.dart';
import 'core/app_export.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:omar_s_application2/presentation/sign_in_enter_pin_screen/sign_in_enter_pin_screen.dart';

var number = null;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  number = prefs.getString("number");
  print(number);

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  Logger.init(kReleaseMode ? LogMode.live : LogMode.debug);
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    if (number == null)
      return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        translations: AppLocalization(),
        locale: Get.deviceLocale, //for setting localization strings
        fallbackLocale: Locale('en', 'US'),
        title: 'Patron',
        initialBinding: InitialBindings(),
        home: SplashScreen(),
        getPages: AppRoutes.pages,
      );
    else
      return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        translations: AppLocalization(),
        locale: Get.deviceLocale, //for setting localization strings
        fallbackLocale: Locale('en', 'US'),
        title: 'Patron',
        initialBinding: InitialBindings(),
        home: SignInEnterPinScreen(phone: number),
        getPages: AppRoutes.pages,
      );
  }
}
