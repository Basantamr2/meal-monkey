import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: double.infinity,
      child: Column(
        children: [
          SizedBox(height: 30.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 21.w),
            child: Row(
              children: [
                Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          "Good morning Akila!",
                          style: TextStyle(fontSize: 20.sp, height: 2.7.h),
                        ),
                        Spacer(),
                        Icon(Icons.shopping_cart)
                      ],
                    ),
                    Text(
                      "Delivering to",
                      style: TextStyle(fontSize: 11.sp, height: 2.h),
                    ),
                    SizedBox(height: 3.h),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          "Current Location",
                          style: TextStyle(fontSize: 16.sp, height: 2.1.h),
                        ),
                        SizedBox(width: 40.5.w),
                        Icon(
                          Icons.keyboard_arrow_down,
                          size: 21.h,
                          color: Color(0xffFC6011),
                        )
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 20.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: TextFormField(decoration: InputDecoration(hintText: "Search food",
                prefixIcon:Padding(padding:EdgeInsetsDirectional.only(start: 10.w),child: Icon(Icons.search)),),
          ))
        ],
      ),
    ));
  }
}
