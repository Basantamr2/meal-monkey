import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meal_monkey/generated/codegen_loader.g.dart';
import 'package:meal_monkey/screens/after_splash/view.dart';
import 'package:meal_monkey/screens/home/view.dart';
import 'package:meal_monkey/screens/login/view.dart';
import 'package:meal_monkey/screens/new_password/view.dart';
import 'package:meal_monkey/screens/on_boarding/view.dart';
import 'package:meal_monkey/screens/otp/view.dart';
import 'package:meal_monkey/screens/reset_password/view.dart';
import 'package:meal_monkey/screens/signup/view.dart';
import 'package:meal_monkey/screens/splash/view.dart';
import 'helper/color.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  runApp(EasyLocalization(
      child: ScreenUtilInit(builder: (context) => const MyApp()),
      saveLocale: true,
      startLocale: const Locale("en"),
      fallbackLocale: const Locale("ar"),
      assetLoader: const CodegenLoader(),
      supportedLocales: const [Locale("ar"), Locale("en")],
      path: "Assets/Langs"));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        locale: context.locale,
        theme: ThemeData(
          primarySwatch: buildMaterialColor(const Color(0xffFC6011)),
          platform: TargetPlatform.iOS,
          elevatedButtonTheme: ElevatedButtonThemeData(
              style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(28.r)),
            padding: EdgeInsets.only(top: 17.r, bottom: 18.r),
          )),
          outlinedButtonTheme: OutlinedButtonThemeData(
              style: OutlinedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(28.r)),
                  padding: EdgeInsets.only(top: 17.r, bottom: 18.r),
                  side: const BorderSide(
                    color: Color(0xffFF6011),
                  ))),
          inputDecorationTheme: InputDecorationTheme(
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(28.r),
                  borderSide: BorderSide.none),
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 34, vertical: 25),
              filled: true,
              fillColor: const Color(0xffF2F2F2)),
        ),
        home: PageView(
          children: [
           //  const SplashScreen(),
           //  const AfterSplashScreen(),
           //  const  OnBoardingScreen(),
           //  const LoginScreen(),
           //  const SignupScreen(),
           //  const ResetpasswordScreen(),
           //  const OtpScreen(),
           //  const NewPasswordScreen(),
             const  HomeScreen()
          ],
        )
    );
  }
}
