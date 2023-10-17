import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jock_sports_app/constants/styles.dart';

class MoreBetsList extends StatelessWidget {
  bool isPlayerProps;

  MoreBetsList({this.isPlayerProps = false});

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

  List<String> listPropsActions = [
    "  Pass Completions",
    "  Pass Attempts",
    "  Interceptions",
    "  Passing Yards",
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 4,
      itemBuilder: ((context, index) {
        return Container(
          width: double.infinity,
          height: 150.h,
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
                            flex: isPlayerProps ? 3 : 2,
                            child: Container(
                              //color: Colors.brown,
                              width: double.infinity,
                              height: double.infinity,
                              //color: Colors.red,
                              child: isPlayerProps
                                  ? Padding(
                                      padding: EdgeInsets.only(left: 8.w),
                                      child: Row(
                                        children: [
                                          Text("MUST START FOR ACTION",
                                              style: TextStyle(
                                                  color: kBlueColor,
                                                  fontWeight: FontWeight.normal,
                                                  fontSize: 11.sp))
                                        ],
                                      ),
                                    )
                                  : CustomPaint(
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
                                              style: kBlueText.copyWith(
                                                  fontSize: 13.sp),
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
                                        style: isPlayerProps
                                            ? kGreenText
                                            : index % 2 == 0
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
                                          color: isPlayerProps
                                              ? kGreenColor
                                              : index % 2 == 0
                                                  ? kRedColor
                                                  : kGreenColor,
                                        ),
                                        SizedBox(
                                          width: 4.w,
                                        ),
                                        Text("NFL",
                                            style: isPlayerProps
                                                ? kGreenText
                                                : index % 2 == 0
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

              //==================1RST TEAM PROPS================

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
                                isPlayerProps
                                    ? "assets/images/dak.png"
                                    : teamImages[index],
                                width: isPlayerProps ? 45.w : 55.w,
                                height: isPlayerProps ? 45.h : 55.h,
                              ),
                              Text(
                                  isPlayerProps
                                      ? "Dak Prescott"
                                      : teamList[index],
                                  style: kBlueText.copyWith(
                                      fontSize: isPlayerProps ? 14.sp : 12.sp)),
                              SizedBox(
                                width: 3.w,
                              ),
                              isPlayerProps
                                  ? SizedBox()
                                  : Text("(5-8)",
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
                              isPlayerProps
                                  ? Expanded(flex: 1, child: Container())
                                  : Expanded(
                                      flex: 1,
                                      child: Container(
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                                color: kBlueColor,
                                                width: 1.5.sp)),
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
                                      // alignment: Alignment.topCenter,
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              color: kGreenColor, width: 2.sp)),
                                      child: Flex(
                                        direction: Axis.horizontal,
                                        children: [
                                          Expanded(
                                              flex: 3,
                                              child: Container(
                                                child: Stack(
                                                  children: [
                                                    Positioned(
                                                      top: 0,
                                                      left: 30.w,
                                                      child: Text(
                                                        "-110",
                                                        style: kBlueText,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              )),
                                          Expanded(
                                              flex: 1,
                                              child: Container(
                                                color: kGreenColor,
                                                child: RotatedBox(
                                                  quarterTurns: -1,
                                                  child: Center(
                                                    child: Text("OVER",
                                                        style:
                                                            kWhiteText.copyWith(
                                                                fontSize:
                                                                    11.sp)),
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
                                isPlayerProps
                                    ? "assets/images/nfl_logo.png"
                                    : teamImages[index + 1],
                                width: isPlayerProps ? 35.w : 55.w,
                                height: isPlayerProps ? 35.h : 55.h,
                              ),
                              Text(
                                  isPlayerProps
                                      ? listPropsActions[index]
                                      : teamList[index + 1],
                                  style: kBlueText.copyWith(
                                      fontSize: isPlayerProps ? 14.sp : 12.sp,
                                      fontWeight: isPlayerProps
                                          ? FontWeight.normal
                                          : FontWeight.bold)),
                              SizedBox(
                                width: 3.w,
                              ),
                              isPlayerProps
                                  ? SizedBox()
                                  : Text("(5-8)",
                                      style: kWhiteText.copyWith(
                                          fontSize: 12.sp,
                                          color: Color.fromRGBO(52, 58, 74, 1)))
                            ],
                          ),
                        ),
                      ),
                      isPlayerProps
                          ? Expanded(
                              flex: 1,
                              child: Container(),
                            )
                          : Expanded(
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
                                        color: index % 2 == 0
                                            ? kRedColor
                                            : kGreenColor,
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
                              isPlayerProps
                                  ? Expanded(flex: 1, child: Container())
                                  : Expanded(
                                      flex: 1,
                                      child: Container(
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                                color: kBlueColor,
                                                width: 1.5.sp)),
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
                                      child: Flex(
                                        direction: Axis.horizontal,
                                        children: [
                                          Expanded(
                                              flex: 3,
                                              child: Container(
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
                                                          width: 45.w, //55
                                                          height: 25.h, //35
                                                          decoration: BoxDecoration(
                                                              color:
                                                                  Colors.white,
                                                              border: Border.all(
                                                                  color:
                                                                      kBlueColor,
                                                                  width:
                                                                      1.5.sp)),
                                                          child: Center(
                                                            child: Text(
                                                              "45",
                                                              style: kBlueText,
                                                            ),
                                                          ),
                                                        )),
                                                    /* Positioned(
                                              right: 0,
                                              child: Container(
                                                height: 45.h,
                                                width: 20.w,
                                                color: kRedColor,
                                              ))*/
                                                  ],
                                                ),
                                              )),
                                          Expanded(
                                              flex: 1,
                                              child: Container(
                                                width: double.infinity,
                                                height: double.infinity,
                                                color: kRedColor,
                                                child: RotatedBox(
                                                  quarterTurns: -1,
                                                  child: Center(
                                                    child: Text("UNDER",
                                                        style:
                                                            kWhiteText.copyWith(
                                                                fontSize:
                                                                    11.sp)),
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
