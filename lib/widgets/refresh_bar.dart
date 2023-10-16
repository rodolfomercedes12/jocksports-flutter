import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jock_sports_app/constants/styles.dart';

class RefreshBar extends StatelessWidget {
  const RefreshBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 45.h,
      //color: Colors.red,
      child: Flex(
        direction: Axis.horizontal,
        children: [
          Expanded(
              flex: 1,
              child: Container(
                width: double.infinity,
                height: double.infinity,
                color: kBlueColor,
                child: CustomPaint(
                    painter: BoxPainter(),
                    child: Padding(
                      padding: EdgeInsets.only(left: 5.w),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.refresh,
                            color: kBlueColor,
                          ),
                          SizedBox(
                            width: 2.w,
                          ),
                          Text("REFRESH", style: kBlueText)
                        ],
                      ),
                    )),
              )),
          Expanded(
              flex: 1,
              child: Container(
                color: kBlueColor,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                        child: Text(
                      "SPREAD/ML",
                      style: kWhiteText.copyWith(fontSize: 13.sp),
                    )),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 0, horizontal: 0),
                          child: Icon(
                            Icons.arrow_drop_up,
                            size: 15.sp,
                            color: kGreenColor,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 0, horizontal: 0),
                          child: Icon(
                            Icons.arrow_drop_down,
                            size: 15.sp,
                            color: kRedColor,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              )),
          Expanded(
              flex: 1,
              child: Container(
                color: kBlueColor,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                        child: Text(
                      "TOTAL/TT",
                      style: kWhiteText.copyWith(fontSize: 13.sp),
                    )),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 0, horizontal: 0),
                          child: Icon(
                            Icons.arrow_drop_up,
                            size: 15.sp,
                            color: kGreenColor,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 0, horizontal: 0),
                          child: Icon(
                            Icons.arrow_drop_down,
                            size: 15.sp,
                            color: kRedColor,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              )),
        ],
      ),
    );
  }
}

class BoxPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = new Paint()
      ..color = kGreenColor
      ..strokeWidth = 1
      ..style = PaintingStyle.fill;

    final path = new Path();
    path.lineTo(size.width, 0);
    path.lineTo(size.width * 0.75, size.height);
    path.lineTo(0, size.height);
    path.lineTo(0, 0);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
