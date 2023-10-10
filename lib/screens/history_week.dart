import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants/styles.dart';

class HistoryWeek extends StatelessWidget {
  List<String> rewardList = [
    "90",
    "0",
    "180",
    "90",
    "0",
    "0",
    "45",
    "500",
    "0",
    "0",
    "45",
    "500",
  ];

  List<String> dateList = [
    "TUESDAY, OCT 10",
    "0",
    "0",
    "WEDNESDAY, OCT 11",
    "0",
    "0",
    "THURSDAY, OCT 12",
    "0",
    "0",
    "FRIDAY, OCT 13",
    "0",
    "0",
    "0",
  ];

  List<String> teamImages = [
    "assets/images/vikings.png",
    "assets/images/bucaneros.png",
    "assets/images/falcons.png",
    "assets/images/colts.png",
    "assets/images/eagles.png",
    "assets/images/lions.png",
    "assets/images/bucaneros.png",
    "assets/images/vikings.png",
    "assets/images/lions.png",
    "assets/images/bucaneros.png",
    "assets/images/falcons.png",
    "assets/images/colts.png",
  ];

  List<String> teamList = [
    "VIKINGS",
    "BUCCANEARS",
    "FALCONS",
    "COLTS",
    "EAGLES",
    "LIONS",
    "BUCCANEARS",
    "VIKINGS",
    "LIONS",
    "BUCCANEARS",
    "FALCONS",
    "COLTS",
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
        //color: Colors.orange,
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 50.h,
              //color: Colors.red,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 125.w,
                      height: 36.h,
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: Color.fromRGBO(175, 176, 178, 1.0),
                            width: 1.5.sp),
                      ),
                      child: Center(
                          child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: 3.w,
                          ),
                          Text("Oct 10-16",
                              style: kBlueText.copyWith(fontSize: 15.sp)),
                          Icon(
                            Icons.keyboard_arrow_down,
                            color: Color.fromRGBO(175, 176, 178, 1.0),
                            size: 30.sp,
                          )
                        ],
                      )),
                    ),
                    Row(
                      children: [
                        Text("TOTAL: ",
                            style: kBlueText.copyWith(fontSize: 18.sp)),
                        Text("+ \$ 905",
                            style: kGreenText.copyWith(fontSize: 20.sp)),
                      ],
                    )
                  ],
                ),
              ),
            ),
            desc_risk_reward(),
            Expanded(
                child: Container(
              //color: Colors.blue,
              child: ListView.builder(
                  itemCount: 12,
                  itemBuilder: ((context, index) {
                    return Column(
                      children: [
                        index % 3 == 0
                            ? Container(
                                width: double.infinity,
                                height: 30.h,
                                color: Color.fromRGBO(73, 106, 130, 1),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(dateList[index],
                                      style:
                                          kWhiteText.copyWith(fontSize: 11.sp)),
                                ),
                              )
                            : SizedBox(),
                        Container(
                          width: double.infinity,
                          height: 30.h,
                          margin: EdgeInsets.only(bottom: 4.h),
                          //color: Colors.red,
                          child: Flex(
                            direction: Axis.horizontal,
                            children: [
                              Expanded(
                                flex: 2,
                                child: Container(
                                  height: double.infinity,
                                  color: index % 2 == 0
                                      ? Color.fromRGBO(235, 235, 235, 1)
                                      : Colors.white,
                                  child: Row(
                                    children: [
                                      Image.asset(teamImages[index],
                                          fit: BoxFit.fitHeight,
                                          width: 40.w,
                                          height: 40.h),
                                      Center(
                                          child: Text(
                                        teamList[index],
                                        style:
                                            kBlueText.copyWith(fontSize: 12.sp),
                                      )),
                                      SizedBox(
                                        width: 7.w,
                                      ),
                                      Center(
                                          child: Text(
                                        "-8 -110",
                                        style: kBlueText.copyWith(
                                            fontSize: 12.sp,
                                            color: Color.fromRGBO(
                                                87, 107, 126, 1)),
                                      )),
                                    ],
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: Container(
                                  height: double.infinity,
                                  color: index % 2 == 0
                                      ? Color.fromRGBO(235, 235, 235, 1)
                                      : Colors.white,
                                  child: index == 1 ||
                                          index == 6 ||
                                          index == 8 ||
                                          index == 11
                                      ? Center(
                                          child: Text(
                                          "- \$50",
                                          style: kRedText.copyWith(
                                              fontSize: 14.sp),
                                        ))
                                      : SizedBox(),
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: Container(
                                  height: double.infinity,
                                  color: index % 2 == 0
                                      ? Color.fromRGBO(235, 235, 235, 1)
                                      : Colors.white,
                                  child: rewardList[index] == "0"
                                      ? SizedBox()
                                      : Center(
                                          child: Text(
                                          "+ \$${rewardList[index]}",
                                          style: kGreenText.copyWith(
                                              fontSize: 14.sp),
                                        )),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    );
                  })),
            ))
          ],
        ));
  }

  Container desc_risk_reward() {
    return Container(
      width: double.infinity,
      height: 30.h,
      //color: Colors.red,
      child: Flex(
        direction: Axis.horizontal,
        children: [
          Expanded(
            flex: 2,
            child: Container(
              height: double.infinity,
              color: kBlueColor,
              child: Center(
                  child: Text(
                "DESCRIPTION",
                style: kWhiteText.copyWith(fontSize: 14.sp),
              )),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              height: double.infinity,
              color: kRedColor,
              child: Center(
                  child: Text(
                "RISK",
                style: kWhiteText.copyWith(fontSize: 14.sp),
              )),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              height: double.infinity,
              color: kGreenColor,
              child: Center(
                  child: Text(
                "REWARD",
                style: kWhiteText.copyWith(fontSize: 14.sp),
              )),
            ),
          ),
        ],
      ),
    );
  }
}
