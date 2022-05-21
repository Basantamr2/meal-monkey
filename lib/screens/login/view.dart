import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meal_monkey/gen/assets.gen.dart';
import 'package:meal_monkey/generated/locale_keys.g.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsetsDirectional.only(
              top: 60.r, start: 34.r, end: 34.r, bottom: 25.r),
          child: SingleChildScrollView(
             // physics: ClampingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                GestureDetector(onTap: (){ context.setLocale(context.locale.languageCode == "ar"
                    ? const Locale("en")
                    : const Locale("ar"));},
                  child: Center(
                    child: Text(LocaleKeys.login.tr(),
                        style:
                        TextStyle(fontSize: 30.sp  ,color:const Color(0xff4A4B4D))),
                  ),
                ),
                 SizedBox(height: 12.h),
                Center(
                  child: Text(LocaleKeys.addYourDetailsToLogin.tr(),
                      style:
                      TextStyle(fontSize: 14.sp, color:const Color(0xff7C7D7E))),
                ),
                 SizedBox(height: 36.h),
                TextFormField(
                  decoration: InputDecoration(hintText: LocaleKeys.yourEmail.tr()),
                ),
                 SizedBox(height: 28.h),
                TextFormField(
                  decoration: InputDecoration(hintText: LocaleKeys.password.tr()),
                ),
                 SizedBox(height: 28.h),
                ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(primary:const Color(0xffFC6011)),
                    child: Text(
                     LocaleKeys.login.tr(),
                      style:
                      TextStyle(fontSize: 16.sp, color:const Color(0xffFFFFFF)),
                    )),
                 SizedBox(height: 24.h),
                Center(
                  child: Text(LocaleKeys.forgotYourPassword.tr(),
                      style:
                      TextStyle(fontSize: 14.sp, color:const Color(0xff7C7D7E))),
                ),
                 SizedBox(height: 49.h),
                Center(
                  child: Text(LocaleKeys.orLoginWith.tr(),
                      style:
                      TextStyle(fontSize: 14.sp, color:const Color(0xff7C7D7E))),
                ),
                 SizedBox(height: 27.h),
                ElevatedButton.icon(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(primary:const Color(0xff367FC0)),
                  icon: Padding(
                      padding: EdgeInsetsDirectional.only(end: 32.r),
                      child: Image.asset(Assets.icons.fb.path,
                        height: 15.h,
                        width: 7.w,
                      )),
                  label:  Text(LocaleKeys.loginWithFacebook.tr()),
                ),
                 SizedBox(height: 28.h),
                ElevatedButton.icon(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(primary:const Color(0xffDD4B39)),
                  icon: Padding(
                      padding: EdgeInsetsDirectional.only(end: 32.r),
                      child: Image.asset(Assets.icons.google.path,
                        height: 12.h,
                        width: 19.w,
                      )),
                  label:  Text(LocaleKeys.loginWithGoogle.tr()),
                ),
                  SizedBox(height: 83.h),
                Center(
                  child: Text.rich(
                    TextSpan(children: [
                       TextSpan(
                          text:LocaleKeys.doNotHaveAnAccount.tr(),
                          style:const TextStyle(color: Color(0xff707070))),
                      WidgetSpan(
                          child: InkWell(
                              onTap: () {},
                              child: Text(LocaleKeys.signUp.tr(),
                                  style:const TextStyle(color: Color(0xffFC6011)))))
                    ]),
                    // style: TextStyle(fontSize: 14.sp),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
