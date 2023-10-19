import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants/styles.dart';

class AboutUsScreen extends StatelessWidget {
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
                /*Icon(
                  Icons.person,
                  size: 70.sp,
                  color: kGreyColor,
                ),*/
                Text(
                  "ABOUT US",
                  style: kTextStyle.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 25.sp,
                  ),
                ),
                SizedBox(
                  height: 35.h,
                ),
                Image.asset(
                  "assets/images/jock_sports_logo.png",
                  width: 250.w,
                  height: 250.h,
                ),
                SizedBox(
                  height: 15.h,
                ),
                Text("OUR MISSION",
                    style: kTextFieldStyle.copyWith(
                        fontSize: 25.sp,
                        color: Colors.white,
                        fontWeight: FontWeight.bold)),
                SizedBox(
                  height: 10.h,
                ),
                Padding(
                  padding: const EdgeInsets.all(13.0),
                  child: Text(
                    "At JockSports, our mission is to revolutionize the world of sports betting by providing a platform that empowers enthusiasts and novices alike to enjoy a responsible and thrilling betting experience. We believe in transparency, integrity, and innovation as the cornerstones of our operation, and we're committed to fostering a community where sports fans can come together to amplify the excitement of every game, match, and race.",
                    style: kTextFieldStyle.copyWith(
                        fontSize: 15.sp,
                        color: Colors.grey,
                        fontWeight: FontWeight.normal),
                    textAlign: TextAlign.justify,
                  ),
                ),
                SizedBox(
                  height: 30.h,
                ),
                Text("RESPONSIBLE GAMBLING",
                    style: kTextFieldStyle.copyWith(
                        fontSize: 25.sp,
                        color: Colors.white,
                        fontWeight: FontWeight.bold)),
                SizedBox(
                  height: 10.h,
                ),
                Padding(
                  padding: const EdgeInsets.all(13.0),
                  child: Text(
                    "We prioritize the well-being of our users by encouraging responsible gambling habits. We provide tools and resources to help our users set limits, monitor their gaming behavior, and seek assistance when needed.",
                    style: kTextFieldStyle.copyWith(
                        fontSize: 15.sp,
                        color: Colors.grey,
                        fontWeight: FontWeight.normal),
                    textAlign: TextAlign.justify,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
