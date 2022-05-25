import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meal_monkey/gen/assets.gen.dart';

class ItemCategory extends StatelessWidget {
  const ItemCategory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 113.h,
      width: 88.w,
      margin: EdgeInsetsDirectional.only(start: 18.w),
      child: Row(
        children: [
          Image.asset(Assets.images.products.a1.path,
              height: 88.h, width: 88.w),
          SizedBox(
            height: 7.h,
          ),
          Text(
            "Offers",
            style: TextStyle(fontSize: 14.sp, color:const Color(0xff4A4B4D)),
          ),
          Image.asset(Assets.images.products.a11.path,
              height: 88.h, width: 88.w),
          SizedBox(
            height: 7.h,
          ),
          Text(
            "Sri Lankan",
            style: TextStyle(fontSize: 14.sp, color:const Color(0xff4A4B4D)),
          ),
          Image.asset(Assets.images.products.a13.path,
              height: 88.h, width: 88.w),
          SizedBox(
            height: 7.h,
          ),
          Text(
            "Italian",
            style: TextStyle(fontSize: 14.sp, color:const Color(0xff4A4B4D)),
          ),
          Image.asset(Assets.images.products.a20.path,
              height: 88.h, width: 88.w),
          SizedBox(
            height: 7.h,
          ),
          Text(
            "Indian",
            style: TextStyle(fontSize: 14.sp, color:const Color(0xff4A4B4D)),
          ),
        ],
      ),
    );
  }
}
