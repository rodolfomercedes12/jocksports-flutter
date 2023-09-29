import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jock_sports_app/constants/styles.dart';

class GameTimeAndContinue extends StatelessWidget {
  const GameTimeAndContinue({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: double.infinity,
        height: 60.h,
        color: kBlueColor,
        padding: EdgeInsets.symmetric(horizontal: 12.w),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "GAME TIME",
              style: kWhiteText.copyWith(fontSize: 30.sp),
            ),
            Container(
              width: 175.w,
              height: 40.h,
              decoration: BoxDecoration(
                  color: kGreenColor,
                  borderRadius: BorderRadius.circular(10.r)),
              child: Center(
                child: Text("CONTINUE",
                    style: kTextFieldStyle.copyWith(
                        color: Colors.black,
                        fontSize: 14.7.sp,
                        fontWeight: FontWeight.bold)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
