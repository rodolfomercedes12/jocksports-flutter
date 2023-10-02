import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jock_sports_app/constants/styles.dart';

class BetListDialog extends StatelessWidget {
  const BetListDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 3,
        itemBuilder: (context, index) {
          return Container(
              margin: EdgeInsets.symmetric(horizontal: 15.w, vertical: 7.h),
              width: 200,
              height: 130.h,
              decoration: BoxDecoration(
                color: Colors.white, //Color(0xff122B48),
                borderRadius: BorderRadius.circular(8.r),
                border: Border.all(color: Colors.grey, width: 1.sp),
              ),
              child: Column(
                children: [
                  /*SizedBox(
                                  height: 6.h,
                                ),*/
                  Container(
                    width: double.infinity,
                    height: 25.h,
                    decoration: BoxDecoration(
                        color: kBlueColor,
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(8.r),
                            topLeft: Radius.circular(8.r))),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Center(
                            child: Text(
                              "VIKINGS -8 VS. LIONS",
                              style: kWhiteText.copyWith(fontSize: 11.sp),
                            ),
                          ),
                          SizedBox(
                            width: 40.w,
                          ),
                          Icon(
                            index == 1
                                ? Icons.check_circle_rounded
                                : Icons.cancel,
                            color: index == 1 ? kGreenColor : kRedColor,
                          )
                        ],
                      ),
                    ),
                  ),

                  Container(
                    width: double.infinity,
                    child: Row(
                      children: [
                        //PURPLE CONTAINER
                        Container(
                          width: 120.w,
                          height: 35.h,
                          color: Color.fromRGBO(57, 27, 116, 1),
                          child: Row(
                            children: [
                              Image.asset(
                                "assets/images/vikings.png",
                                width: 55.w,
                                height: 55.h,
                              ),
                              Text("VIKINGS",
                                  style: kWhiteText.copyWith(fontSize: 11.sp))
                            ],
                          ),
                        ),
                        //WHITE CONTAINER
                        Container(
                          width: 40.w,
                          height: 35.h,
                          color: Colors.white,
                          child: Center(
                            child: Text("VS.",
                                style: kBlueText.copyWith(fontSize: 10.sp)),
                          ),
                        ),
                        //BLUE CONTAINER
                        Expanded(
                          child: Container(
                            width: 175.w,
                            height: 35.h,
                            color: Color.fromRGBO(24, 96, 173, 1),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text("LIONS",
                                    style:
                                        kWhiteText.copyWith(fontSize: 11.sp)),
                                Image.asset(
                                  "assets/images/lions4.png",
                                  width: 55.w,
                                  height: 55.h,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),

                  //YOUR BET

                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: 'YOUR BET:',
                                style: TextStyle(
                                  color: Color.fromRGBO(175, 176, 178, 1.0),
                                  fontSize: 13.sp,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "CircularMedium",
                                ),
                              ),
                              TextSpan(
                                text: ' VIKINGS',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "CircularMedium",
                                ),
                              ),
                            ],
                          ),
                        ),
                        /* Text("YOUR BET: VIKINGS",
                                          style: kWhiteText.copyWith(
                                              fontSize: 14.sp)),*/
                        Row(
                          children: [
                            Container(
                              width: 95.w,
                              height: 31.h,
                              decoration: BoxDecoration(
                                border: Border.all(
                                    color: Color.fromRGBO(175, 176, 178, 1.0),
                                    width: 1.5.sp),
                              ),
                              child: Center(
                                  child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    width: 3.w,
                                  ),
                                  Text("-8 -110", style: kBlackText),
                                ],
                              )),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                ],
              ));
        });
  }
}
