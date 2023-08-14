import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jock_sports_app/constants/styles.dart';

class AuthTextField extends StatelessWidget {
  String text;
  IconData icon;
  TextEditingController? controller;
  bool isPassword;

  AuthTextField(
      {required this.text,
      required this.icon,
      this.controller,
      this.isPassword = false});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 15.h),
      child: TextField(
        obscureText: isPassword ? true : false,
        style: kTextFieldStyle,
        decoration: InputDecoration(
            hintText: text,
            hintStyle: kTextFieldStyle,
            prefixIcon: Icon(
              icon,
              size: 30.sp,
              color: kGreyColor,
            ),
            border: InputBorder.none),
      ),
    );
  }
}
