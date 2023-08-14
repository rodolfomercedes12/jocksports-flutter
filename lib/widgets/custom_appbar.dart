import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jock_sports_app/constants/styles.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 95.h,
      color: kBlueColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(
            "assets/images/jock_sports_logo.png",
            width: 93.w,
            height: 90.h,
          ),
          SizedBox(
            width: 7.w,
          ),
          Container(
            width: 124.w,
            height: 38.h,
            padding: EdgeInsets.all(5.0),
            decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(10.r),
                border: Border.all(color: kGreyColor, width: 2.0.sp)),
            child: Row(
              children: [
                Icon(Icons.person, color: Colors.white),
                SizedBox(
                  width: 5.w,
                ),
                Expanded(
                  child: Text("MR_CHUCK",
                      overflow: TextOverflow.ellipsis,
                      style: kTextStyle.copyWith(
                          color: Colors.white,
                          fontSize: 11.5.sp,
                          fontWeight: FontWeight.bold)),
                )
              ],
            ),
          ),
          SizedBox(
            width: 10.w,
          ),
          Container(
            width: 127.w,
            height: 40.h,
            padding: EdgeInsets.all(5.0),
            decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(10.r),
                border: Border.all(color: kGreyColor, width: 2.0.sp)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("BALANCE: \$300 ",
                    overflow: TextOverflow.ellipsis,
                    style: kTextStyle.copyWith(
                        color: kGreenColor,
                        fontSize: 12.sp,
                        fontWeight: FontWeight.bold))
              ],
            ),
          ),
          SizedBox(
            width: 9.w,
          ),
          Padding(
            padding: EdgeInsets.only(right: 3.w),
            child: Icon(
              Icons.menu,
              color: kGreyColor,
              size: 40.sp,
            ),
          )
        ],
      ),
    );
  }
}
