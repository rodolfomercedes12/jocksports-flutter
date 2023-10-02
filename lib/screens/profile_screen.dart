import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jock_sports_app/constants/styles.dart';
import 'package:jock_sports_app/screens/login_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: kBlueColor,
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(
              top: 20.h,
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 20.w),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Icon(
                          Icons.arrow_back_ios,
                          color: kGreyColor,
                          size: 40.sp,
                        ),
                      ),
                    )
                  ],
                ),
                Icon(
                  Icons.person,
                  size: 70.sp,
                  color: kGreyColor,
                ),
                Text(
                  "MR_CHUCK",
                  style: kTextStyle.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 25.sp,
                  ),
                ),
                SizedBox(
                  height: 30.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Text(
                          "\$4,500",
                          style: kTextStyle.copyWith(fontSize: 30.sp),
                        ),
                        SizedBox(
                          height: 3.h,
                        ),
                        Text(
                          "AVAILABLE",
                          style: kTextStyle.copyWith(
                              color: Colors.white,
                              fontSize: 11.sp,
                              letterSpacing: 1.0),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          "\$1,000",
                          style: kTextStyle.copyWith(
                              fontSize: 30.sp, color: kGreenColor),
                        ),
                        SizedBox(
                          height: 3.h,
                        ),
                        Text(
                          "BALANCE",
                          style: kTextStyle.copyWith(
                              color: Colors.white,
                              fontSize: 11.sp,
                              letterSpacing: 1.0),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          "\$250",
                          style: kTextStyle.copyWith(
                              fontSize: 30.sp, color: kRedColor),
                        ),
                        SizedBox(
                          height: 3.h,
                        ),
                        Text(
                          "PENDING",
                          style: kTextStyle.copyWith(
                              color: Colors.white,
                              fontSize: 11.sp,
                              letterSpacing: 1.0),
                        )
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 35.h,
                ),
                Divider(
                  color: kGreyColor,
                  thickness: 1.7.sp,
                ),
                SizedBox(
                  height: 24.h,
                ),
                Text(
                  "MY BETS",
                  style: kTextStyle.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 21.sp,
                  ),
                ),
                SizedBox(
                  height: 24.h,
                ),
                Divider(
                  color: kGreyColor,
                  thickness: 1.7.sp,
                ),
                SizedBox(
                  height: 24.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 10.r,
                      backgroundColor: kRedColor,
                      child: Text(
                        "1",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 6.w,
                    ),
                    Text(
                      "NOTIFICATIONS",
                      style: kTextStyle.copyWith(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 21.sp,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 24.h,
                ),
                Divider(
                  color: kGreyColor,
                  thickness: 1.7.sp,
                ),
                SizedBox(
                  height: 24.h,
                ),
                Text(
                  "ACCOUNT",
                  style: kTextStyle.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 21.sp,
                  ),
                ),
                SizedBox(
                  height: 24.h,
                ),
                Divider(
                  color: kGreyColor,
                  thickness: 1.7.sp,
                ),
                SizedBox(
                  height: 24.h,
                ),
                Text(
                  "FAQ",
                  style: kTextStyle.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 21.sp,
                  ),
                ),
                SizedBox(
                  height: 24.h,
                ),
                Divider(
                  color: kGreyColor,
                  thickness: 1.7.sp,
                ),
                SizedBox(
                  height: 24.h,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LoginScreen()));
                  },
                  child: Text(
                    "SIGN OUT",
                    style: kTextStyle.copyWith(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 21.sp,
                    ),
                  ),
                ),
                SizedBox(
                  height: 24.h,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
