import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:omar_s_application2/presentation/create_an_account_screen/create_an_account_screen.dart';
import 'package:omar_s_application2/presentation/registration_three_screen/registration_three_screen.dart';
import 'package:omar_s_application2/presentation/settings_screen/settings_screen.dart';
import 'package:omar_s_application2/presentation/sign_in_enter_pin_one_screen/sign_in_enter_pin_one_screen.dart';
import 'package:omar_s_application2/presentation/splash_screen/splash_screen.dart';
import 'package:omar_s_application2/presentation/start_screen/start_screen.dart';
import 'package:omar_s_application2/presentation/test_screen/test_screen.dart';
import 'core/app_export.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:omar_s_application2/presentation/sign_in_enter_pin_screen/sign_in_enter_pin_screen.dart';
import 'package:flutter_windowmanager/flutter_windowmanager.dart';

var number = null;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await FlutterWindowManager.addFlags(FlutterWindowManager.FLAG_SECURE);

  SharedPreferences prefs = await SharedPreferences.getInstance();
  number = prefs.getString("number");

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  Logger.init(kReleaseMode ? LogMode.live : LogMode.debug);
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MainAppState createState() => _MainAppState();
}

class _MainAppState extends State<MyApp> with WidgetsBindingObserver {
  @override
  initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);

    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) async {
    super.didChangeAppLifecycleState(state);

    SharedPreferences prefs = await SharedPreferences.getInstance();
    number = prefs.getString("number");

    // if app is either paused, inactive or detached
    if (state != AppLifecycleState.resumed) {
      //print("number: $number");

      // if user is logged in, navigate to enter pin
      if (number != null) {
        Get.toNamed(AppRoutes.signInEnterPinOneScreen);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      translations: AppLocalization(),
      locale: Get.deviceLocale, //for setting localization strings
      fallbackLocale: Locale('en', 'US'),
      title: 'Patron',
      initialBinding: InitialBindings(),
      home: SplashScreen(number),
      // home: RegistrationThreeScreen(),
      // home: SettingsScreen("add_money"),
      getPages: AppRoutes.pages,
    );
  }
}
