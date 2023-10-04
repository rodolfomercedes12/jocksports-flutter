import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jock_sports_app/constants/styles.dart';
import 'package:jock_sports_app/screens/login_screen.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({Key? key}) : super(key: key);

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
                  "NOTIFICATIONS",
                  style: kTextStyle.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 25.sp,
                  ),
                ),
                SizedBox(
                  height: 35.h,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
