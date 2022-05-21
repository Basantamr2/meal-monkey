import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meal_monkey/generated/locale_keys.g.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({Key? key}) : super(key: key);

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Container(
      padding: EdgeInsetsDirectional.only(
          top: 60.r, start: 34.r, end: 34.r, bottom: 25.r),
      child: Column(crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
         GestureDetector(onTap: (){
           context.setLocale(context.locale.languageCode == "ar"
               ? const Locale("en")
               : const Locale("ar"));
         },
           child: Center(
                child: Text(
              LocaleKeys.weHaveSentAnOTPToYourMobile.tr(),textAlign: TextAlign.center,
              style:const TextStyle(fontSize: 25, color: Color(0xff4A4B4D)),
            )),
         ),
          SizedBox(height: 10.h),
        Center(
            child: Text(LocaleKeys.pleaseCheckYourMobileNumber.tr(),textAlign: TextAlign.center,
              style:const TextStyle(fontSize: 14, color: Color(0xff7C7D7E)),
            ),
          ),
          SizedBox(height: 36.h),

              //OTP

          PinCodeTextField(
            length: 6,
            obscureText: false,
            animationType: AnimationType.fade,
            pinTheme: PinTheme(
              shape: PinCodeFieldShape.box,
              borderRadius: BorderRadius.circular(5),
              fieldHeight: 56,
              fieldWidth: 56,
              activeFillColor: Colors.white,
            ),
            animationDuration: Duration(milliseconds: 300),
            backgroundColor: Colors.blue.shade50,
            enableActiveFill: true,
            onCompleted: (v) {
              print("Completed");
            },
            onChanged: (value) {
              print(value);
              setState(() {
              });
            },
            beforeTextPaste: (text) {
              print("Allowing to paste $text");
              //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
              //but you can show anything you want here, like your pop up saying wrong paste format or etc
              return true;
            }, appContext: context,
          ),




          SizedBox(height: 36.h),
          ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  primary:const Color(0xffFC6011)),
              child: Text(
                LocaleKeys.next.tr(),
                style: TextStyle(
                    fontSize: 16.sp, color:const Color(0xffFFFFFF)))),
                SizedBox(height: 32.h),
               Center(
                  child: Text.rich(
                    TextSpan(children: [
                      TextSpan(
                          text: LocaleKeys.didNotReceive.tr(),
                          style:
                          const TextStyle(color: Color(0xff707070))),
                      WidgetSpan(
                          child: InkWell(
                              onTap: () {},
                              child: Text(LocaleKeys.clickHere.tr(),
                                  style: const TextStyle(
                                      color: Color(0xffFC6011)))))
                    ]),
                    // style: TextStyle(fontSize: 14.sp),
                  ),
              )],
      ),
    )));
  }
}
