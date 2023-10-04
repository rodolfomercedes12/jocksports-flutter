import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jock_sports_app/constants/styles.dart';

class BetList extends StatelessWidget {
  const BetList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 3,
        itemBuilder: (context, index) {
          return Container(
              margin: EdgeInsets.symmetric(horizontal: 15.w, vertical: 7.h),
              width: double.infinity,
              height: 160.h,
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
                      child: Text("VIKINGS -8 VS. LIONS",
                          style: kWhiteText.copyWith(fontSize: 11.sp)),
                    ),
                  ),

                  Container(
                    width: double.infinity,
                    child: Row(
                      children: [
                        //PURPLE CONTAINER
                        Container(
                          width: 180.w,
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
                    height: 7.h,
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
                                  fontSize: 18.sp,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "CircularMedium",
                                ),
                              ),
                              TextSpan(
                                text: ' VIKINGS',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 17.sp,
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
                            Text(
                              "Buy Points",
                              style: TextStyle(fontSize: 10.sp),
                            ),
                            SizedBox(
                              width: 6.w,
                            ),
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(
                                    width: 3.w,
                                  ),
                                  Text("-8 -110", style: kBlackText),
                                  Icon(
                                    Icons.keyboard_arrow_down,
                                    color: Colors.red,
                                    size: 30.sp,
                                  )
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

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      GestureDetector(
                        onTap: () {
                          //
                        },
                        child: Container(
                          width: 180.w,
                          height: 40.h,
                          decoration: BoxDecoration(
                              color: Colors.transparent,
                              border: Border.all(
                                  color: Color.fromRGBO(175, 176, 178, 1.0),
                                  width: 1.5.sp),
                              borderRadius: BorderRadius.circular(10.r)),
                          child: Center(
                            child: Text("\$100 ",
                                style: kTextFieldStyle.copyWith(
                                    color: kBlueColor, fontSize: 18.sp)),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 6.w,
                      ),
                      Container(
                        width: 180.w,
                        height: 40.h,
                        decoration: BoxDecoration(
                            color: Colors.transparent,
                            border: Border.all(color: kGreenColor, width: 2.sp),
                            borderRadius: BorderRadius.circular(12.r)),
                        child: Row(
                          children: [
                            Container(
                              width: 100.w,
                              height: 40.h,
                              decoration: BoxDecoration(
                                  color: kGreenColor,
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(10.r),
                                      bottomLeft: Radius.circular(10.r))),
                              child: Center(
                                child: Text("REWARD",
                                    style: kTextFieldStyle.copyWith(
                                        color: kBlueColor, fontSize: 15.sp)),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                child: Center(
                                  child: Text("\$90 ",
                                      style: kTextFieldStyle.copyWith(
                                          color: kGreenColor, fontSize: 14.sp)),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ));
        });
  }
}
