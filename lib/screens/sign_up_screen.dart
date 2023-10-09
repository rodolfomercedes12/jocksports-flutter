import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jock_sports_app/constants/styles.dart';
import 'package:jock_sports_app/screens/onboarding_screen.dart';
import 'package:jock_sports_app/widgets/auth_textfield.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff0A2240),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 40.h,
              ),
              Image.asset(
                "assets/images/jock_sports_logo.png",
                width: 320.w,
                height: 320.h,
              ),
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
                  text: "USERNAME",
                  icon: Icons.person,
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
                    /*Container(
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
                    ),*/
                    GestureDetector(
                      onTap: (() {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => OnboardingScreen()));
                      }),
                      child: Container(
                        width: 300.w,
                        height: 50.h,
                        decoration: BoxDecoration(
                            color: kRedColor,
                            borderRadius: BorderRadius.circular(10.r)),
                        child: Center(
                          child: Text("REGISTER",
                              style: kTextFieldStyle.copyWith(
                                  color: Colors.white, fontSize: 17.sp)),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
              Center(
                child: Text(
                  "Already have an account?",
                  style: TextStyle(
                      color: kGreyColor,
                      fontFamily: "CircularMedium",
                      fontSize: 16.sp,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 10.h,
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
                        Navigator.pop(context);
                      },
                      child: Container(
                        width: 300.w,
                        height: 50.h,
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
                    /*Container(
                      width: 300.w,
                      height: 50.h,
                      decoration: BoxDecoration(
                          color: kRedColor,
                          borderRadius: BorderRadius.circular(10.r)),
                      child: Center(
                        child: Text("REGISTER",
                            style: kTextFieldStyle.copyWith(
                                color: Colors.white, fontSize: 17.sp)),
                      ),
                    ),*/
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
