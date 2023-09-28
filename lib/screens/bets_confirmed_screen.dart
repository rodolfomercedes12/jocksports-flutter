import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jock_sports_app/constants/styles.dart';

class BetsConfirmedScreen extends StatelessWidget {
  const BetsConfirmedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: kBlueColor,
        body: Container(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Text(
                        "X",
                        style: TextStyle(
                            color: kRedColor,
                            // fontFamily: "CircularMedium",
                            fontSize: 35.sp,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Text(
                      "BETS CONFIRMED",
                      style: kGreenText.copyWith(fontSize: 25.sp),
                    ),
                    Icon(
                      Icons.menu,
                      color: kGreyColor,
                      size: 50.sp,
                    )
                    /*IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.cancel,
                          color: kRedColor,
                          size: 50.sp,
                        ))*/
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(top: 15.h),
                  //color: Colors.blue,
                  child: ListView.builder(
                      itemCount: 3,
                      itemBuilder: (context, index) {
                        return Container(
                            margin: EdgeInsets.symmetric(
                                horizontal: 15.w, vertical: 7.h),
                            width: double.infinity,
                            height: 163.h,
                            decoration: BoxDecoration(
                                color: Color(0xff122B48),
                                borderRadius: BorderRadius.circular(8.r)),
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 6.h,
                                ),
                                Text("VIKINGS -8 VS. LIONS",
                                    style:
                                        kWhiteText.copyWith(fontSize: 11.sp)),
                                SizedBox(
                                  height: 6.h,
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
                                                style: kWhiteText.copyWith(
                                                    fontSize: 11.sp))
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
                                              style: kBlueText.copyWith(
                                                  fontSize: 10.sp)),
                                        ),
                                      ),
                                      //BLUE CONTAINER
                                      Expanded(
                                        child: Container(
                                          width: 175.w,
                                          height: 35.h,
                                          color: Color.fromRGBO(24, 96, 173, 1),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              Text("LIONS",
                                                  style: kWhiteText.copyWith(
                                                      fontSize: 11.sp)),
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
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 10.w),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("YOUR BET: VIKINGS",
                                          style: kWhiteText.copyWith(
                                              fontSize: 14.sp)),
                                      Container(
                                        width: 87.w,
                                        height: 31.h,
                                        color: Color.fromRGBO(104, 134, 155, 1),
                                        child: Center(
                                            child: Text("-8 -110",
                                                style: kBlackText)),
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 10.h,
                                ),

                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Container(
                                      width: 180.w,
                                      height: 40.h,
                                      decoration: BoxDecoration(
                                          color: Colors.transparent,
                                          border: Border.all(
                                              color: kRedColor, width: 2.sp),
                                          borderRadius:
                                              BorderRadius.circular(10.r)),
                                      child: Center(
                                        child: Text("RISK:    \$100 ",
                                            style: kTextFieldStyle.copyWith(
                                                color: kRedColor,
                                                fontSize: 14.sp)),
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
                                          border: Border.all(
                                              color: kGreenColor, width: 2.sp),
                                          borderRadius:
                                              BorderRadius.circular(10.r)),
                                      child: Center(
                                        child: Text("REWARD:       \$90 ",
                                            style: kTextFieldStyle.copyWith(
                                                color: kGreenColor,
                                                fontSize: 14.sp)),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ));
                      }),
                ),
              )
            ],
          ),
        ),
        bottomNavigationBar: Container(
          padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 12.h),
          height: 135.h,
          color: kBlueColor,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      /* Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => RegisterScreen()  ));*/
                    },
                    child: Container(
                      width: 185.w,
                      height: 40.h,
                      decoration: BoxDecoration(
                          color: kRedColor,
                          borderRadius: BorderRadius.circular(10.r)),
                      child: Center(
                        child: Text("RISK: \$300 ",
                            style: kTextFieldStyle.copyWith(
                                color: Colors.white, fontSize: 14.sp)),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  GestureDetector(
                    onTap: () {
                      /*Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => BetsConfirmedScreen()));*/
                    },
                    child: Container(
                      width: 185.w,
                      height: 40.h,
                      decoration: BoxDecoration(
                          color: kGreenColor,
                          borderRadius: BorderRadius.circular(10.r)),
                      child: Center(
                        child: Text("REWARD: \$270 ",
                            style: kTextFieldStyle.copyWith(
                                color: Colors.black,
                                fontSize: 13.2.sp,
                                fontWeight: FontWeight.bold)),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Row(
                      children: [
                        Icon(
                          Icons.home,
                          color: Color.fromRGBO(60, 98, 120, 1),
                          size: 25.sp,
                        ),
                        SizedBox(
                          width: 2.w,
                        ),
                        Text("RETURN TO HOME PAGE",
                            style: kBlueText.copyWith(
                                color: Colors.white, fontSize: 14.sp))
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
