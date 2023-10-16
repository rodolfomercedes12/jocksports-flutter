import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jock_sports_app/constants/styles.dart';

class MoreBetsList extends StatelessWidget {
  List<String> teamImages = [
    "assets/images/vikings.png",
    "assets/images/eagles.png",
    "assets/images/falcons.png",
    "assets/images/colts.png",
    "assets/images/lions.png",
    "assets/images/bucaneros.png",
    "assets/images/bucaneros.png",
    "assets/images/vikings.png",
    "assets/images/lions.png",
    "assets/images/bucaneros.png",
    "assets/images/falcons.png",
    "assets/images/colts.png",
  ];

  List<String> teamList = [
    "VIKINGS",
    "EAGLES",
    "FALCONS",
    "COLTS",
    "LIONS",
    "BUCCANEARS",
    "BUCCANEARS",
    "VIKINGS",
    "LIONS",
    "BUCCANEARS",
    "FALCONS",
    "COLTS",
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: ((context, index) {
        return Container(
          width: double.infinity,
          height: 150.h,
          //color: Colors.teal,
          child: Flex(
            direction: Axis.vertical,
            children: [
              Expanded(
                flex: 2,
                child: Container(
                    width: double.infinity,
                    height: double.infinity,
                    //color: Colors.orange,
                    child: Flex(
                      direction: Axis.horizontal,
                      children: [
                        Expanded(
                            flex: 2,
                            child: Container(
                              //color: Colors.brown,
                              width: double.infinity,
                              height: double.infinity,
                              child: CustomPaint(
                                painter: BoxPainter(),
                                child: Padding(
                                  padding: EdgeInsets.only(left: 5.w),
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.add,
                                        color: kBlueColor,
                                        size: 15.sp,
                                      ),
                                      Text(
                                        "MORE BETS",
                                        style:
                                            kBlueText.copyWith(fontSize: 13.sp),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            )),
                        Expanded(
                            flex: 4,
                            child: Container(
                              //color: Colors.brown,
                              child: Padding(
                                padding: EdgeInsets.only(right: 6.w),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text("(LIVE) 7:20 PM CST ",
                                        style: index % 2 == 0
                                            ? kRedText
                                            : kGreenText),
                                    SizedBox(
                                      width: 4.w,
                                    ),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.tv,
                                          size: 16.sp,
                                          color: index % 2 == 0
                                              ? kRedColor
                                              : kGreenColor,
                                        ),
                                        SizedBox(
                                          width: 4.w,
                                        ),
                                        Text("NFL",
                                            style: index % 2 == 0
                                                ? kRedText
                                                : kGreenText),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            )),
                      ],
                    )),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  color: Color.fromRGBO(235, 235, 235, 1),
                  child: Flex(
                    direction: Axis.horizontal,
                    children: [
                      Expanded(
                        flex: 3,
                        child: Container(
                          //color: Colors.red,
                          child: Row(
                            children: [
                              Image.asset(
                                teamImages[index],
                                width: 55.w,
                                height: 55.h,
                              ),
                              Text(teamList[index],
                                  style: kBlueText.copyWith(fontSize: 12.sp)),
                              SizedBox(
                                width: 3.w,
                              ),
                              Text("(5-8)",
                                  style: kWhiteText.copyWith(
                                      fontSize: 12.sp,
                                      color: Color.fromRGBO(52, 58, 74, 1)))
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                            // color: kRedColor,
                            ),
                      ),
                      Expanded(
                        flex: 3,
                        child: Container(
                          //color: Colors.orange,
                          child: Flex(
                            direction: Axis.horizontal,
                            children: [
                              Expanded(
                                  flex: 1,
                                  child: Container(
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: kBlueColor, width: 1.5.sp)),
                                    child: Center(
                                      child: Text(
                                        "-8 -110",
                                        style: kBlueText,
                                      ),
                                    ),
                                  )),
                              Expanded(
                                  flex: 1,
                                  child: Container(
                                    alignment: Alignment.topCenter,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: kGreenColor, width: 2.sp)),
                                    child: Text(
                                      "-110",
                                      style: kBlueText,
                                    ),
                                  )),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              // ====================2ND TEAM PROPS====================

              Expanded(
                flex: 2,
                child: Container(
                  color: Colors.white,
                  child: Flex(
                    direction: Axis.horizontal,
                    children: [
                      Expanded(
                        flex: 3,
                        child: Container(
                          //color: Colors.red,
                          child: Row(
                            children: [
                              Image.asset(
                                teamImages[index + 1],
                                width: 55.w,
                                height: 55.h,
                              ),
                              Text(teamList[index + 1],
                                  style: kBlueText.copyWith(fontSize: 12.sp)),
                              SizedBox(
                                width: 3.w,
                              ),
                              Text("(5-8)",
                                  style: kWhiteText.copyWith(
                                      fontSize: 12.sp,
                                      color: Color.fromRGBO(52, 58, 74, 1)))
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                          //color: kRedColor,
                          child: Stack(
                            overflow: Overflow.visible,
                            children: [
                              Positioned(
                                top: -25.h,
                                child: Container(
                                  width: 60.w,
                                  height: 40.h,
                                  color:
                                      index % 2 == 0 ? kRedColor : kGreenColor,
                                  child: Center(
                                    child: Text("PROPS",
                                        style: kWhiteText.copyWith(
                                            fontSize: 13.sp)),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: Container(
                          //color: Colors.orange,
                          child: Flex(
                            direction: Axis.horizontal,
                            children: [
                              Expanded(
                                  flex: 1,
                                  child: Container(
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: kBlueColor, width: 1.5.sp)),
                                    child: Center(
                                      child: Text(
                                        "-8 -110",
                                        style: kBlueText,
                                      ),
                                    ),
                                  )),
                              Expanded(
                                  flex: 1,
                                  child: Container(
                                      width: double.infinity,
                                      height: double.infinity,
                                      //alignment: Alignment.bottomCenter,
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              color: kRedColor, width: 2.sp)),
                                      child: Stack(
                                        overflow: Overflow.visible,
                                        children: [
                                          Positioned(
                                            bottom: 0,
                                            left: 30.w,
                                            child: Text(
                                              "-110",
                                              style: kBlueText,
                                            ),
                                          ),
                                          Positioned(
                                              top: -20,
                                              left: 18.w,
                                              child: Container(
                                                width: 55.w,
                                                height: 35.h,
                                                decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    border: Border.all(
                                                        color: kBlueColor,
                                                        width: 1.5.sp)),
                                                child: Center(
                                                  child: Text(
                                                    "45",
                                                    style: kBlueText,
                                                  ),
                                                ),
                                              ))
                                        ],
                                      ))),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      }),
    );
  }
}

class BoxPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = new Paint()
      ..color = Color.fromRGBO(150, 171, 190, 1)
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
