import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jock_sports_app/constants/styles.dart';

class CustomButton extends StatelessWidget {
  CustomButton({required this.text, required this.color, required this.press});
  String text;
  Color color;
  Function? press;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 62.h,
      child: TextButton(
        onPressed: () {
          if (this.press != null) {
            this.press!();
          }
        },
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(this.color),
          foregroundColor: MaterialStateProperty.all(kBlueColor),
          //padding: MaterialStateProperty.all(EdgeInsets.symmetric(horizontal: 18.h, vertical:18.w)),
          textStyle: MaterialStateProperty.all(kWhiteText),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.r),
            ),
          ),
        ),
        child: Text(this.text),
      ),
    );
  }
}
