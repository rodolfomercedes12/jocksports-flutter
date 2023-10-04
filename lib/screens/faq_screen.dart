import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jock_sports_app/constants/styles.dart';
import 'package:jock_sports_app/screens/login_screen.dart';

class FaqScreen extends StatelessWidget {
  const FaqScreen({Key? key}) : super(key: key);

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
                  "FAQ",
                  style: kTextStyle.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 25.sp,
                  ),
                ),
                SizedBox(
                  height: 35.h,
                ),
                Divider(
                  color: kGreyColor,
                  thickness: 1.7.sp,
                ),
                SizedBox(
                  height: 24.h,
                ),
                ExpansionTile(
                  title: Text(
                    "Is it safe to bet on this app?",
                    style: kTextStyle.copyWith(
                        color: Colors.white,
                        fontSize: 17.sp,
                        fontWeight: FontWeight.bold),
                  ),
                  iconColor: kGreenColor,
                  collapsedIconColor: Colors.white,
                  childrenPadding: EdgeInsets.zero,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15.w),
                      child: Text(
                        "Yes, JockSports takes security seriously. We use advanced encryption technology to protect your personal and financial information. Additionally, we are licensed and regulated to ensure fair and responsible gaming.",
                        textAlign: TextAlign.justify,
                        style: kTextStyle.copyWith(
                            color: Colors.grey,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.normal),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 24.h,
                ),
                Divider(
                  color: kGreyColor,
                  thickness: 1.7.sp,
                ),
                SizedBox(
                  height: 24.h,
                ),
                ExpansionTile(
                  title: Text(
                    "What sports and events can I bet on?",
                    style: kTextStyle.copyWith(
                        color: Colors.white,
                        fontSize: 17.sp,
                        fontWeight: FontWeight.bold),
                  ),
                  iconColor: kGreenColor,
                  collapsedIconColor: Colors.white,
                  childrenPadding: EdgeInsets.zero,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15.w),
                      child: Text(
                        "JockSports offers a wide range of sports and events to bet on, including football, basketball, tennis, horse racing, and more. You can explore the available options in the sportsbook section of the app.",
                        textAlign: TextAlign.justify,
                        style: kTextStyle.copyWith(
                            color: Colors.grey,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.normal),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 24.h,
                ),
                Divider(
                  color: kGreyColor,
                  thickness: 1.7.sp,
                ),
                SizedBox(
                  height: 24.h,
                ),
                ExpansionTile(
                  title: Text(
                    "What is the minimum bet amount?",
                    style: kTextStyle.copyWith(
                        color: Colors.white,
                        fontSize: 17.sp,
                        fontWeight: FontWeight.bold),
                  ),
                  iconColor: kGreenColor,
                  collapsedIconColor: Colors.white,
                  childrenPadding: EdgeInsets.zero,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15.w),
                      child: Text(
                        "The minimum bet amount may vary depending on the sport or event. You can check the specific minimum bet amount for each selection in the betting slip before confirming your wager.",
                        textAlign: TextAlign.justify,
                        style: kTextStyle.copyWith(
                            color: Colors.grey,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.normal),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 24.h,
                ),
                Divider(
                  color: kGreyColor,
                  thickness: 1.7.sp,
                ),
                SizedBox(
                  height: 24.h,
                ),
                ExpansionTile(
                  title: Text(
                    "Can I change or cancel a bet after placing it?",
                    style: kTextStyle.copyWith(
                        color: Colors.white,
                        fontSize: 17.sp,
                        fontWeight: FontWeight.bold),
                  ),
                  iconColor: kGreenColor,
                  collapsedIconColor: Colors.white,
                  childrenPadding: EdgeInsets.zero,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15.w),
                      child: Text(
                        "Once a bet is confirmed, it cannot be changed or canceled. Please review your selections carefully before placing your bets.",
                        textAlign: TextAlign.justify,
                        style: kTextStyle.copyWith(
                            color: Colors.grey,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.normal),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 24.h,
                ),
                Divider(
                  color: kGreyColor,
                  thickness: 1.7.sp,
                ),
                SizedBox(
                  height: 24.h,
                ),
                ExpansionTile(
                  title: Text(
                    "Are there any fees for deposits or withdrawals?",
                    style: kTextStyle.copyWith(
                        color: Colors.white,
                        fontSize: 17.sp,
                        fontWeight: FontWeight.bold),
                  ),
                  iconColor: kGreenColor,
                  collapsedIconColor: Colors.white,
                  childrenPadding: EdgeInsets.zero,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15.w),
                      child: Text(
                        "We do not charge fees for deposits or withdrawals. However, your payment provider may have its own fees, so we recommend checking with them for any additional charges.",
                        textAlign: TextAlign.justify,
                        style: kTextStyle.copyWith(
                            color: Colors.grey,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.normal),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 24.h,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
