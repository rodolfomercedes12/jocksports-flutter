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
            SizedBox(
              height: 10.h,
            ),
            RefreshBar(),
            GreyDateBar(),
            Expanded(
              child: Container(
                  //color: Colors.blue,
                  child: MoreBetsList()),
            )
          ],
        ),
      ),
    );
  }
}
