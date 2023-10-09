import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jock_sports_app/constants/styles.dart';

class HistoryYear extends StatelessWidget {
  const HistoryYear({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 20.w, vertical: 25.h),
        width: double.infinity,
        //height: 150.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.r),
          //color: Colors.blue,

          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5), // Color de la sombra
              spreadRadius: 3, // Radio de propagación de la sombra
              blurRadius: 10, // Radio de desenfoque de la sombra
              offset: Offset(
                  0, 3), // Desplazamiento de la sombra (horizontal, vertical)
            ),
          ],
        ),
        child: Column(
          children: [
            Container(
                width: double.infinity,
                height: 80.h,
                //color: Colors.blue,
                child: Stack(
                  overflow: Overflow.visible,
                  children: [
                    Positioned(
                      top: -40.h,
                      left: 120.w,
                      child: Image.asset(
                        "assets/images/jock_sports_logo.png",
                        width: 125.w, //155.w
                        height: 125.h, //155.h
                      ),
                    )
                  ],
                )),
            Text(
              "YOUR YEAR STATS",
              style: kBlueText.copyWith(fontSize: 20.sp),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 10.h),
                child: Container(
                    //width: double.infinity,
                    //height: 150.h,
                    decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(10.r),
                        border: Border.all(
                            color: Color.fromRGBO(176, 186, 199, 1.0),
                            width: 2.0.sp)),
                    child: Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 30.h),
                              child: Icon(
                                Icons.arrow_back_ios,
                                size: 23.sp,
                                color: Color.fromRGBO(176, 186, 199, 1.0),
                              ),
                            ),
                            Text("2023",
                                style: kBlueText.copyWith(fontSize: 60.sp)),
                            Padding(
                              padding: EdgeInsets.only(top: 30.h, left: 1.w),
                              child: Icon(
                                Icons.arrow_forward_ios,
                                size: 23.sp,
                                color: Color.fromRGBO(176, 186, 199, 1.0),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 4.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("TOTAL:",
                                style: kBlueText.copyWith(
                                  fontSize: 20.sp,
                                )),
                            SizedBox(
                              width: 3.w,
                            ),
                            Text(" + \$13,210",
                                style: kBlueText.copyWith(
                                    fontSize: 23.sp, color: kGreenColor))
                          ],
                        ),
                        SizedBox(
                          height: 14.h,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10.w),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("TOTAL WAGERS",
                                  style: kBlueText.copyWith(
                                    fontSize: 11.sp,
                                  )),
                              Text("WIN %",
                                  style: kBlueText.copyWith(
                                    fontSize: 11.sp,
                                  )),
                              Text("LOSS %",
                                  style: kBlueText.copyWith(
                                    fontSize: 11.sp,
                                  )),
                              Text("AVERAGE BET",
                                  style: kBlueText.copyWith(
                                    fontSize: 11.sp,
                                  )),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 15.h,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8.w),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: 80.w,
                                height: 40.h,
                                decoration: BoxDecoration(
                                    color: Colors.transparent,
                                    borderRadius: BorderRadius.circular(25.r),
                                    border: Border.all(
                                        color:
                                            Color.fromRGBO(176, 186, 199, 1.0),
                                        width: 2.0.sp)),
                                child: Center(
                                  child: Text("540",
                                      style: kGreyLightText.copyWith(
                                          fontSize: 18.5.sp)),
                                ),
                              ),
                              Container(
                                width: 80.w,
                                height: 40.h,
                                decoration: BoxDecoration(
                                    color: Colors.transparent,
                                    borderRadius: BorderRadius.circular(25.r),
                                    border: Border.all(
                                        color:
                                            Color.fromRGBO(176, 186, 199, 1.0),
                                        width: 2.0.sp)),
                                child: Center(
                                  child: Text("60 %",
                                      style: kGreenText.copyWith(
                                          fontSize: 18.5.sp)),
                                ),
                              ),
                              Container(
                                width: 80.w,
                                height: 40.h,
                                decoration: BoxDecoration(
                                    color: Colors.transparent,
                                    borderRadius: BorderRadius.circular(25.r),
                                    border: Border.all(
                                        color:
                                            Color.fromRGBO(176, 186, 199, 1.0),
                                        width: 2.0.sp)),
                                child: Center(
                                  child: Text("40 %",
                                      style:
                                          kRedText.copyWith(fontSize: 18.5.sp)),
                                ),
                              ),
                              Container(
                                width: 80.w,
                                height: 40.h,
                                decoration: BoxDecoration(
                                    color: Colors.transparent,
                                    borderRadius: BorderRadius.circular(25.r),
                                    border: Border.all(
                                        color:
                                            Color.fromRGBO(176, 186, 199, 1.0),
                                        width: 2.0.sp)),
                                child: Center(
                                  child: Text("\$ 200",
                                      style: kGreyLightText.copyWith(
                                          fontSize: 18.5.sp)),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    )),
              ),
            )
          ],
        ));
  }
}
