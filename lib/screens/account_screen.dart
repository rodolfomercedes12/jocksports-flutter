import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jock_sports_app/constants/styles.dart';
import 'package:jock_sports_app/screens/login_screen.dart';
import 'package:lottie/lottie.dart';

import '../widgets/auth_textfield.dart';

class AccountScreen extends StatelessWidget {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmpasswordController = TextEditingController();
  TextEditingController usernameController = TextEditingController();

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
              SizedBox(
                height: 25.h,
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
              /*Icon(
                    Icons.person,
                    size: 70.sp,
                    color: kGreyColor,
                  ),*/
              Text(
                "ACCOUNT",
                style: kTextStyle.copyWith(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 25.sp,
                ),
              ),
              SizedBox(
                height: 35.h,
              ),
              Expanded(
                child: Container(
                  width: double.infinity,
                  //color: Colors.blue,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 35.h,
                        ),
                        Container(
                          width: 300.w,
                          height: 74.h,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20.0.r),
                          ),
                          child: AuthTextField(
                            text: "MR_CHUCK",
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
                            controller: emailController,
                            text: "mr_chuck99@gmail.com",
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
                          height: 74.h,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20.0.r),
                          ),
                          child: AuthTextField(
                            controller: passwordController,
                            text: "CONFIRM PASSWORD",
                            icon: Icons.password,
                            isPassword: true,
                          ),
                        ),
                        SizedBox(
                          height: 35.h,
                        ),
                        Container(
                          width: 300.w,
                          height: 70.h,
                          //color: Colors.orange,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              GestureDetector(
                                onTap: () {},
                                child: Container(
                                  width: 300.w,
                                  height: 56.h,
                                  decoration: BoxDecoration(
                                      color: kGreenColor,
                                      borderRadius:
                                          BorderRadius.circular(10.r)),
                                  child: Center(
                                    child: Text("SAVE CHANGES",
                                        style: kTextFieldStyle.copyWith(
                                            color: kBlueColor,
                                            fontSize: 16.sp)),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
