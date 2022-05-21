import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meal_monkey/generated/locale_keys.g.dart';

class ResetpasswordScreen extends StatelessWidget {
  const ResetpasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Container(
                padding: EdgeInsetsDirectional.only(
                    top: 60.r, start: 34.r, end: 34.r, bottom: 25.r),
                child: SingleChildScrollView(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                      GestureDetector(onTap: (){
                        context.setLocale(context.locale.languageCode == "ar"
                            ? const Locale("en")
                            : const Locale("ar"));
                      },
                        child: Center(
                          child: Text(LocaleKeys.resetPassword.tr(),
                              style: TextStyle(
                                  fontSize: 30.sp,color: const Color(0xff4A4B4D))),
                        ),
                      ),
                            SizedBox(height: 20.h),
                      Center(
                        child: Text(
                         LocaleKeys.pleaseEnterYourEmailToReceiveALinkToCreateANewPasswordViaEmail.tr(),
                          style: TextStyle(
                              fontSize: 14.sp, color:const Color(0xff7C7D7E)),
                          textAlign: TextAlign.center,
                        ),
                      ),
                            SizedBox(height: 60.h),
                      TextFormField(
                        decoration: InputDecoration(hintText: LocaleKeys.email.tr()),
                      ),
                            SizedBox(height: 43.h),
                      ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              primary:const Color(0xffFC6011)),
                          child: Text(
                            LocaleKeys.send.tr(),
                            style: TextStyle(
                                fontSize: 16.sp, color:const Color(0xffFFFFFF)),
                          )),
                    ])))));
  }
}
