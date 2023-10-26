import 'package:awesome_dialog/awesome_dialog.dart';
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
            GestureDetector(
              onTap: () {
                AwesomeDialog(
                  context: context,
                  dialogType: DialogType.noHeader,
                  customHeader: Image.asset(
                    "assets/images/jock_sports_logo.png",
                    width: 100.w,
                    height: 100.h,
                  ),
                  animType: AnimType.rightSlide,
                  dialogBorderRadius: BorderRadius.circular(30.r),
                  title: 'Continue with the Parlay Betting?',
                  titleTextStyle: kBlueText.copyWith(fontSize: 20.sp),
                  desc:
                      'Once you place your bet you can´t cancelled it. Your bet will be shown on your history tab.',
                  btnOkColor: kBlueColor,
                  btnCancelOnPress: () {},
                  btnOkOnPress: () {},
                )..show();
              },
              child: Container(
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
            ),
          ],
        ),
      ),
    );
  }
}
