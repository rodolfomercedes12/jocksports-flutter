import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants/styles.dart';

class FeedbackScreen extends StatelessWidget {
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
            child: Container(
              //color: Colors.red,
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
                    "FEEDBACK",
                    style: kTextStyle.copyWith(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 25.sp,
                    ),
                  ),
                  SizedBox(
                    height: 35.h,
                  ),
                  /*Image.asset(
                    "assets/images/jock_sports_logo.png",
                    width: 250.w,
                    height: 250.h,
                  ),*/
                  SizedBox(
                    height: 15.h,
                  ),
                  Text("Give us your rating",
                      style: kTextFieldStyle.copyWith(
                          fontSize: 23.sp,
                          color: Colors.white,
                          fontWeight: FontWeight.bold)),
                  SizedBox(
                    height: 15.h,
                  ),
                  RatingBar.builder(
                    initialRating: 3,
                    minRating: 1,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5,
                    itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                    itemBuilder: (context, _) => Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    onRatingUpdate: (rating) {},
                  ),
                  SizedBox(
                    height: 25.h,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 30.w),
                    decoration: BoxDecoration(
                        border: Border.all(width: 1.sp, color: kGreyLight)),
                    child: TextField(
                      style: kTextFieldStyle.copyWith(
                          fontSize: 15.sp,
                          color: Colors.grey,
                          fontWeight: FontWeight.normal),
                      decoration: InputDecoration(
                        hintText: "  Please send us some feedback.",
                        hintStyle: kTextFieldStyle.copyWith(
                            fontSize: 15.sp,
                            color: Colors.grey,
                            fontWeight: FontWeight.normal),
                      ),
                      //maxLength: 500,
                      maxLines: 7,
                    ),
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  Container(
                    width: 360.w,
                    height: 70.h,
                    //color: Colors.orange,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {
                            AwesomeDialog(
                              dismissOnTouchOutside: false,
                              dialogBorderRadius: BorderRadius.circular(30.r),
                              context: context,
                              dialogType: DialogType.success,
                              animType: AnimType.rightSlide,
                              title: 'Feedback Sent!',
                              titleTextStyle:
                                  kBlueText.copyWith(fontSize: 20.sp),
                              desc:
                                  'Thank you for the feedback. Good luck on your next bet!.',
                              //btnOkColor:
                              //btnCancelOnPress: () {},
                              btnOkOnPress: () {},
                            )..show();
                          },
                          child: Container(
                            width: 360.w,
                            height: 56.h,
                            decoration: BoxDecoration(
                                color: kGreenColor,
                                borderRadius: BorderRadius.circular(10.r)),
                            child: Center(
                              child: Text("SEND FEEDBACK",
                                  style: kTextFieldStyle.copyWith(
                                      color: kBlueColor, fontSize: 16.sp)),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  /* Padding(
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
                  ),*/
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
