import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants/styles.dart';

class GreyDateBar extends StatelessWidget {
  const GreyDateBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 35.h,
      color: Color.fromRGBO(73, 106, 130, 1),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.w),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("WEDNESDAY, OCT, 16",
                style: kWhiteText.copyWith(fontSize: 12.sp)),
            Text("MAX: \$2,000", style: kWhiteText.copyWith(fontSize: 12.sp)),
            Text("MAX: \$2,000", style: kWhiteText.copyWith(fontSize: 12.sp))
          ],
        ),
      ),
    );
  }
}
