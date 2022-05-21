import 'package:easy_localization/easy_localization.dart';
import 'package:meal_monkey/generated/locale_keys.g.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NewPasswordScreen extends StatelessWidget {
  const NewPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        padding: EdgeInsetsDirectional.only(
            top: 60.r, start: 34.r, bottom: 25.r, end: 34.r),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Center(
                child: Text(LocaleKeys.newPassword.tr(),
                    style:const TextStyle(fontSize: 30, color: Color(0xff4A4B4D)))),
            SizedBox(height: 12.h,),
            Center(
              child: Text(
                LocaleKeys.pleaseEnterYourEmailToReceiveALinkToCreateANewPasswordViaEmail.tr(),
                textAlign: TextAlign.center,
                style:const TextStyle(fontSize: 14, color: Color(0xff7C7D7E)),
              ),
            ),
            SizedBox(height: 39.h,),
            TextFormField(
                decoration: InputDecoration(hintText: LocaleKeys.newPassword.tr())),
            SizedBox(height: 28.h,),
            TextFormField(
                decoration: InputDecoration(hintText: LocaleKeys.confirmPassword.tr())),
            SizedBox(height:28.h,),
            ElevatedButton(
                onPressed: () {},
                style:
                    ElevatedButton.styleFrom(primary: const Color(0xffFC6011)),
                child: Text(LocaleKeys.next.tr(),
                    style: TextStyle(
                        fontSize: 16.sp, color: const Color(0xffFFFFFF))))
          ],
        ),
      )),
    );
  }
}
