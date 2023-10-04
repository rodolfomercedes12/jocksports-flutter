import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jock_sports_app/constants/styles.dart';
import 'package:jock_sports_app/screens/bets_confirmed_screen.dart';
import 'package:jock_sports_app/screens/login_screen.dart';
import 'package:jock_sports_app/widgets/bet_list.dart';

class PlaceBetScreen extends StatelessWidget {
  const PlaceBetScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            children: [
              Container(
                color: kBlueColor,
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Text(
                          "X",
                          style: TextStyle(
                              color: kRedColor,
                              // fontFamily: "CircularMedium",
                              fontSize: 35.sp,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Text(
                        "PLACE YOUR BETS",
                        style: kWhiteText.copyWith(fontSize: 25.sp),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LoginScreen()));
                        },
                        child: Icon(
                          Icons.menu,
                          color: kGreyColor,
                          size: 50.sp,
                        ),
                      )
                      /*IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.cancel,
                            color: kRedColor,
                            size: 50.sp,
                          ))*/
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                    margin: EdgeInsets.only(top: 15.h),
                    //color: Colors.blue,
                    child: BetList()),
              )
            ],
          ),
        ),
        bottomNavigationBar: Container(
          padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 12.h),
          height: 135.h,
          color: kBlueColor,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      /* Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => RegisterScreen()  ));*/
                    },
                    child: Container(
                      width: 185.w,
                      height: 40.h,
                      decoration: BoxDecoration(
                          //color: kRedColor,
                          borderRadius: BorderRadius.circular(10.r),
                          border: Border.all(color: kRedColor, width: 1.5.sp)),
                      child: Center(
                        child: Text("RISK: \$300 ",
                            style: kTextFieldStyle.copyWith(
                                color: kRedColor, fontSize: 14.sp)),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      width: 185.w,
                      height: 40.h,
                      decoration: BoxDecoration(
                          //color: kGreenColor,
                          border: Border.all(color: kGreenColor, width: 1.5.sp),
                          borderRadius: BorderRadius.circular(10.r)),
                      child: Center(
                        child: Text("REWARD: \$270 ",
                            style: kTextFieldStyle.copyWith(
                                color: kGreenColor,
                                fontSize: 13.2.sp,
                                fontWeight: FontWeight.bold)),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              GestureDetector(
                onTap: () {
                  AwesomeDialog(
                    dismissOnTouchOutside: false,
                    dialogBorderRadius: BorderRadius.circular(30.r),
                    context: context,
                    dialogType: DialogType.question,
                    customHeader:
                        Image.asset("assets/images/jock_sports_logo.png"),
                    animType: AnimType.rightSlide,
                    title: 'Are you sure you want to bet?',
                    titleTextStyle: kBlueText.copyWith(fontSize: 20.sp),
                    desc: 'If you accept the bet will be confirmed.',
                    btnOkColor: kBlueColor,
                    btnOkText: "Confirm Bet",
                    btnCancelOnPress: () {},
                    btnOkOnPress: () {
                      AwesomeDialog(
                        dismissOnTouchOutside: false,
                        dialogBorderRadius: BorderRadius.circular(30.r),
                        context: context,
                        dialogType: DialogType.success,
                        animType: AnimType.rightSlide,
                        title: 'CONGRATULATIONS',
                        titleTextStyle: kBlueText.copyWith(fontSize: 20.sp),
                        desc: 'Your bet has been confirmed, Good luck!.',
                        //btnOkColor:
                        //btnCancelOnPress: () {},
                        btnOkOnPress: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => BetsConfirmedScreen()));
                        },
                      )..show();
                    },
                  )..show();
                  /*Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => BetsConfirmedScreen()));*/
                },
                child: Container(
                  width: 185.w,
                  height: 40.h,
                  decoration: BoxDecoration(
                      color: kGreenColor,
                      borderRadius: BorderRadius.circular(10.r)),
                  child: Center(
                    child: Text("CONFIRM BET",
                        style: kTextFieldStyle.copyWith(
                            color: Colors.black,
                            fontSize: 13.2.sp,
                            fontWeight: FontWeight.bold)),
                  ),
                ),
              ),
              /*Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Row(
                      children: [
                        Icon(
                          Icons.home,
                          color: Color.fromRGBO(60, 98, 120, 1),
                          size: 25.sp,
                        ),
                        SizedBox(
                          width: 2.w,
                        ),
                        Text("RETURN TO HOME PAGE",
                            style: kBlueText.copyWith(
                                color: Colors.white, fontSize: 14.sp))
                      ],
                    ),
                  ),
                ],
              )*/
            ],
          ),
        ),
      ),
    );
  }
}
