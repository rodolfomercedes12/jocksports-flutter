import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jock_sports_app/constants/styles.dart';
import 'package:jock_sports_app/screens/home_screen.dart';
import 'package:jock_sports_app/widgets/custom_button.dart';
import 'package:lottie/lottie.dart';

class OnboardingPage extends StatelessWidget {
  Color color;
  int page;
  String titulo;
  String description;
  String img;

  OnboardingPage(
      {required this.page,
      required this.color,
      required this.titulo,
      required this.description,
      required this.img});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        color: this.color,
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 30.w,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              page == 1
                  ? Image.asset(
                      this.img,
                      width: double.infinity,
                      height: 200.h,
                      //fit: BoxFit.cover,
                    )
                  : Lottie.asset(this.img,
                      addRepaintBoundary: true,
                      width: double.infinity,
                      height: 250.h),
              SizedBox(
                height: 10.h,
              ),
              Text(this.titulo, style: kWhiteText.copyWith(fontSize: 28.sp)),
              SizedBox(
                height: 10.h,
              ),
              Text(this.description,
                  style: kWhiteText.copyWith(
                      height: 1.5, fontSize: 14.sp, letterSpacing: 1.5)),
              if (this.page == 8)
                SizedBox(
                  height: 30.h,
                ),
              if (this.page == 3)
                Padding(
                  padding: EdgeInsets.only(top: 20.h),
                  child: CustomButton(
                      text: "GET STARTED",
                      color: Colors.white,
                      press: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomeScreen()));
                      }),
                ),
            ],
          ),
        ));
  }
}
