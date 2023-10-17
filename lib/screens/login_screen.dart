import 'dart:ui';

import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jock_sports_app/constants/styles.dart';
import 'package:jock_sports_app/screens/bets_confirmed_screen.dart';
import 'package:jock_sports_app/screens/home_screen.dart';
import 'package:jock_sports_app/screens/place_bet_screen.dart';
import 'package:jock_sports_app/screens/player_props.dart';
import 'package:jock_sports_app/screens/team_props.dart';
import 'package:jock_sports_app/screens/profile_screen.dart';
import 'package:jock_sports_app/screens/sign_up_screen.dart';
import 'package:jock_sports_app/widgets/auth_textfield.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

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
                height: 100.h,
              ),
              Image.asset("assets/images/jock_sports_logo.png"),
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
                height: 74.h,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20.0.r),
                ),
                child: AuthTextField(
                  controller: passwordController,
                  text: "PASSWORD",
                  icon: Icons.lock,
                  isPassword: true,
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
                        /*AwesomeDialog(
                          context: context,
                          dialogType: DialogType.error,
                         
                          animType: AnimType.rightSlide,
                          title: 'Wrong credentials',
                          titleTextStyle: kBlueText.copyWith(fontSize: 20.sp),
                          desc: 'Wrong email or password, please try again.',
                          btnOkColor: kBlueColor,
                          btnCancelOnPress: () {},
                          btnOkOnPress: () {},
                        )..show();*/
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => PlayerPropsScreen()));
                      },
                      child: Container(
                        width: 137.w,
                        height: 46.h,
                        decoration: BoxDecoration(
                            color: kGreenColor,
                            borderRadius: BorderRadius.circular(10.r)),
                        child: Center(
                          child: Text("SIGN IN",
                              style: kTextFieldStyle.copyWith(
                                  color: Colors.black, fontSize: 16.sp)),
                        ),
                      ),
                    ),
                    GestureDetector(
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
                    ),
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
