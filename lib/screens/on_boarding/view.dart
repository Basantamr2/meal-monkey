import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meal_monkey/generated/locale_keys.g.dart';
import 'package:meal_monkey/screens/on_boarding/controller.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final controller = OnBoardingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SizedBox(
      width: double.infinity,
      child: ListView(
        children: [
          SizedBox(height: 110.h),
          SizedBox(
            height: 294.h,
            child: PageView(
              onPageChanged: (value) {
                controller.current = value;
                setState(() {});
              },
              children: List.generate(
                controller.images.length,
                (index) => Image.asset(
                  controller.images[controller.current],
                  width: 225.w,
                ),
              ),
            ),
          ),
          SizedBox(height: 70.h),
          Center(
              child: Text(controller.titles[controller.current],
                  style: TextStyle(
                      fontSize: 28.sp, color: const Color(0xff4A4B4D)))),
          SizedBox(height: 33.h),
          Text(controller.hints[controller.current],
              textAlign: TextAlign.center,
              style:
                  TextStyle(fontSize: 13.sp, color: const Color(0xff7C7D7E))),
          SizedBox(height: 20.h),
          Padding(
            padding: EdgeInsets.all(34.r),
            child: ElevatedButton(
                onPressed: () {},
                child: Text(
                 LocaleKeys.next.tr(),
                  style: TextStyle(
                      fontSize: 16.sp, color: const Color(0xffFFFFFF)),
                )),
          ),
        ],
      ),
    ));
  }
}
