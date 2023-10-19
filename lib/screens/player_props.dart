import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jock_sports_app/constants/styles.dart';
import 'package:jock_sports_app/widgets/grey_date_bar.dart';
import 'package:jock_sports_app/widgets/refresh_bar.dart';

import '../constants/constants.dart';
import '../widgets/custom_appbar.dart';
import '../widgets/more_bets.dart';

class PlayerPropsScreen extends StatelessWidget {
  const PlayerPropsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            CustomAppBar(AppConstants.scaffoldKeyGlobal),
            SizedBox(
              height: 20.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.asset(
                      "assets/images/nfl_logo.png",
                      width: 45.w,
                      height: 45.h,
                    ),
                    SizedBox(
                      width: 5.w,
                    ),
                    Text("NFL PLAYER PROPS",
                        style: kBlueText.copyWith(fontSize: 26.sp)),
                  ],
                ),
                /*Container(
                  margin: EdgeInsets.only(right: 9.w),
                  width: 150.w,
                  height: 40.h,
                  decoration: BoxDecoration(
                      color: kRedColor,
                      borderRadius: BorderRadius.circular(30.r)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.scoreboard,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 3.w,
                      ),
                      Text("LIVE SCORES",
                          style: kWhiteText.copyWith(fontSize: 14.sp))
                    ],
                  ),
                )*/
              ],
            ),
            SizedBox(
              height: 10.h,
            ),
            RefreshBar(),
            GreyDateBar(),
            Expanded(
              child: Container(
                //color: Colors.blue,
                child: MoreBetsList(
                  isPlayerProps: true,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
