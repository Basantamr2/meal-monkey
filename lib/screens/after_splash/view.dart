import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meal_monkey/gen/assets.gen.dart';
import 'package:meal_monkey/gen/fonts.gen.dart';
import 'package:meal_monkey/generated/locale_keys.g.dart';

class AfterSplashScreen extends StatelessWidget {
  const AfterSplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(
            height: 445.h,
            child: Stack(
              children: [
                Image.asset(Assets.background.topbg.path,
                    height: 370.h, fit: BoxFit.fill),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Image.asset(Assets.images.logo.path,
                      width: 218.w, height: 185.h),
                ),
              ],
            ),
          ),
          SizedBox(height: 44.h),
          GestureDetector(onTap: () {
            context.setLocale(context.locale.languageCode == "ar"
                ? const Locale("en")
                : const Locale("ar"));
          },
          child: Text(
              LocaleKeys
                  .discoverTheBestFoodsFromOver1000RestaurantsAndFastDeliveryToYourDoorstep
                  .tr(),
              textAlign: TextAlign.center,
              style:
              TextStyle(fontSize: 13.sp, color: const Color(0xff7C7D7E))),),

          SizedBox(height: 36.h),
          ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(primary: const Color(0xffFC6011)),
              child: Text(
                LocaleKeys.login.tr(),
                style: TextStyle(
                    fontSize: 16.sp,
                    fontFamily: FontFamily.metroBlackItalic,
                    color: const Color(0xffFFFFFF)),
              )),
          SizedBox(height: 20.h),
          ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(primary: const Color(0xffFFFFFF)),
              child: Text(
                LocaleKeys.createAnAccount.tr(),
                style:
                    TextStyle(fontSize: 16.sp, color: const Color(0xffFC6011)),
              ))
        ],
      ),
    ));
  }
}
