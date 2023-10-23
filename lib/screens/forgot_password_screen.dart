import 'dart:ui';

import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jock_sports_app/constants/styles.dart';
import 'package:jock_sports_app/screens/about%20us_screen.dart';
import 'package:jock_sports_app/screens/bets_confirmed_screen.dart';
import 'package:jock_sports_app/screens/home_screen.dart';
import 'package:jock_sports_app/screens/place_bet_screen.dart';
import 'package:jock_sports_app/screens/player_props.dart';
import 'package:jock_sports_app/screens/team_props.dart';
import 'package:jock_sports_app/screens/profile_screen.dart';
import 'package:jock_sports_app/screens/sign_up_screen.dart';
import 'package:jock_sports_app/widgets/auth_textfield.dart';

class ForgotPasswordScreen extends StatelessWidget {
  ForgotPasswordScreen({Key? key}) : super(key: key);

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xff0A2240),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 85.h,
              ),
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
                  ),
                ],
              ),
              Image.asset("assets/images/jock_sports_logo.png"),
              SizedBox(
                height: 15.h,
              ),
              Text("Reset Password",
                  style: kWhiteText.copyWith(fontSize: 25.sp)),
              SizedBox(
                height: 15.h,
              ),
              Container(
                width: 300.w,
                height: 74.h,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20.0.r),
                ),
                child: AuthTextField(
                  controller: emailController,
                  text: "EMAIL",
                  icon: Icons.email,
                ),
              ),
              SizedBox(
                height: 25.h,
              ),
              Container(
                width: 300.w,
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
                          title: 'EMAIL SENT',
                          titleTextStyle: kBlueText.copyWith(fontSize: 20.sp),
                          desc:
                              'The email has been sent, please check your inbox and follow the steps to reset your password.',
                          //btnOkColor:
                          //btnCancelOnPress: () {},
                          btnOkOnPress: () {},
                        )..show();
                      },
                      child: Container(
                        width: 300.w,
                        height: 46.h,
                        decoration: BoxDecoration(
                            color: kGreenColor,
                            borderRadius: BorderRadius.circular(10.r)),
                        child: Center(
                          child: Text("SEND EMAIL",
                              style: kTextFieldStyle.copyWith(
                                  color: Colors.black, fontSize: 16.sp)),
                        ),
                      ),
                    ),
                    /*GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => RegisterScreen()));
                      },
                      child: Container(
                        width: 139.w,
                        height: 46.h,
                        decoration: BoxDecoration(
                            color: kRedColor,
                            borderRadius: BorderRadius.circular(10.r)),
                        child: Center(
                          child: Text("NEW ACCOUNT",
                              style: kTextFieldStyle.copyWith(
                                  color: Colors.white, fontSize: 14.sp)),
                        ),
                      ),
                    ),*/
                  ],
                ),
              ),
              SizedBox(
                height: 90.h,
              ),
              Center(
                child: Text(
                  "Copyright @2023 JockSports",
                  style: TextStyle(
                      color: kGreyColor,
                      fontFamily: "CircularMedium",
                      fontSize: 15.sp,
                      fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
        ));
  }
}
