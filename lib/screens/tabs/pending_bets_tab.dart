import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jock_sports_app/constants/styles.dart';

class PendingBetsTab extends StatelessWidget {
  List<String> rewardList = [
    "180",
    "0",
    "90",
    "45",
    "0",
    "0",
    "90",
    "500",
  ];

  List<String> teamImages = [
    "assets/images/eagles.png",
    "assets/images/lions.png",
    "assets/images/bucaneros.png",
    "assets/images/vikings.png",
    "assets/images/vikings.png",
    "assets/images/bucaneros.png",
    "assets/images/falcons.png",
    "assets/images/colts.png",
  ];

  List<String> teamList = [
    "EAGLES",
    "LIONS",
    "BUCCANEARS",
    "VIKINGS",
    "VIKINGS",
    "BUCCANEARS",
    "FALCONS",
    "COLTS",
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 455.h,
      child: Container(
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
                  padding: EdgeInsets.symmetric(horizontal: 15.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text("WAGERS: ",
                              style: kBlueText.copyWith(fontSize: 16.sp)),
                          Padding(
                            padding: EdgeInsets.only(bottom: 1.h),
                            child: Text("8",
                                style:
                                    kGreyLightText.copyWith(fontSize: 18.sp)),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      Text("TOTAL: ",
                          style: kBlueText.copyWith(fontSize: 16.sp)),
                      Container(
                        width: 85.w,
                        height: 36.h,
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: Color.fromRGBO(175, 176, 178, 1.0),
                              width: 1.5.sp),
                        ),
                        child: Center(
                            child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "\$100",
                              style: kRedText.copyWith(fontSize: 14.sp),
                            ),
                          ],
                        )),
                      ),
                      Container(
                        width: 85.w,
                        height: 36.h,
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: Color.fromRGBO(175, 176, 178, 1.0),
                              width: 1.5.sp),
                        ),
                        child: Center(
                            child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("\$905",
                                style: kGreenText.copyWith(fontSize: 15.sp)),
                          ],
                        )),
                      ),
                    ],
                  ),
                ),
              ),
              desc_risk_reward(),
              Expanded(
                  child: Container(
                //color: Colors.blue,
                child: ListView.builder(
                    itemCount: 8,
                    itemBuilder: ((context, index) {
                      return Container(
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
                                          color:
                                              Color.fromRGBO(87, 107, 126, 1)),
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
                                child: index == 1 || index == 6
                                    ? Center(
                                        child: Text(
                                        "- \$50",
                                        style:
                                            kRedText.copyWith(fontSize: 14.sp),
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
                      );
                    })),
              ))
            ],
          )),
      //color: Colors.blue,
    );
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
