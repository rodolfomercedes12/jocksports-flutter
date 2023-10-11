import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jock_sports_app/constants/styles.dart';

class StraightTab extends StatelessWidget {
  const StraightTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 455
          .h, //450.h, //550.h // TODO: Change this value depending on showing Gamble bottom Text and Game Continue Text
      //color: Colors.teal,
      child: SingleChildScrollView(
        child: Column(
          children: [
            ExpansionTile(
              leading: Icon(
                Icons.sports_basketball,
                color: kBlueColor,
              ),
              title: Text(
                "Basketball",
                style: kTextStyle.copyWith(
                    color: kBlueColor,
                    fontSize: 15.sp,
                    fontWeight: FontWeight.bold),
              ),
              iconColor: kGreenColor,
              collapsedIconColor: kRedColor,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset(
                      "assets/images/nba_logo.png",
                      width: 50.w,
                      height: 50.h,
                    ),
                    Text("NBA",
                        style: kTextStyle.copyWith(
                            fontSize: 20.sp, color: kBlueColor))
                  ],
                ),
                _rowSportOption("1st Half", false),
                _rowSportOption("1st Quarter", true),
                _rowSportOption("2nd Quarter", false),
                _rowSportOption("3rd Quarter", false),
                _rowSportOption("4th Quarter", true),
                _rowSportOption("Player Props", true),
                SizedBox(
                  height: 4.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 7.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset(
                        "assets/images/ncaa_logo.png",
                        width: 45.w,
                        height: 45.h,
                      ),
                      SizedBox(
                        width: 5.w,
                      ),
                      Text("NCAA",
                          style: kTextStyle.copyWith(
                              fontSize: 20.sp, color: kBlueColor))
                    ],
                  ),
                ),
                _rowSportOption("1st Half", true),
                _rowSportOption("1st Quarter", false),
                _rowSportOption("2nd Quarter", false),
                _rowSportOption("3rd Quarter", true),
                _rowSportOption("4th Quarter", true),
                _rowSportOption("Player Props", true),
              ],
            ),
            ExpansionTile(
              leading: Icon(
                Icons.sports_baseball,
                color: kBlueColor,
              ),
              title: Text(
                "Baseball",
                style: kTextStyle.copyWith(
                    color: kBlueColor,
                    fontSize: 15.sp,
                    fontWeight: FontWeight.bold),
              ),
              iconColor: kGreenColor,
              collapsedIconColor: kRedColor,
              childrenPadding: EdgeInsets.zero,
            ),
            ExpansionTile(
              leading: Icon(
                Icons.sports_football,
                color: kBlueColor,
              ),
              title: Text(
                "Football",
                style: kTextStyle.copyWith(
                    color: kBlueColor,
                    fontSize: 15.sp,
                    fontWeight: FontWeight.bold),
              ),
              iconColor: kGreenColor,
              collapsedIconColor: kRedColor,
            ),
            ExpansionTile(
              leading: Icon(
                Icons.sports_handball,
                color: kBlueColor,
              ),
              title: Text(
                "Handball",
                style: kTextStyle.copyWith(
                    color: kBlueColor,
                    fontSize: 15.sp,
                    fontWeight: FontWeight.bold),
              ),
              iconColor: kGreenColor,
              collapsedIconColor: kRedColor,
            ),
            ExpansionTile(
              leading: Icon(
                Icons.sports_golf,
                color: kBlueColor,
              ),
              title: Text(
                "Golf",
                style: kTextStyle.copyWith(
                    color: kBlueColor,
                    fontSize: 15.sp,
                    fontWeight: FontWeight.bold),
              ),
              iconColor: kGreenColor,
              collapsedIconColor: kRedColor,
            ),
            ExpansionTile(
              leading: Icon(
                Icons.sports_hockey,
                color: kBlueColor,
              ),
              title: Text(
                "Hockey",
                style: kTextStyle.copyWith(
                    color: kBlueColor,
                    fontSize: 15.sp,
                    fontWeight: FontWeight.bold),
              ),
              iconColor: kGreenColor,
              collapsedIconColor: kRedColor,
            ),
            ExpansionTile(
              leading: Icon(
                Icons.sports_soccer,
                color: kBlueColor,
              ),
              title: Text(
                "Soccer",
                style: kTextStyle.copyWith(
                    color: kBlueColor,
                    fontSize: 15.sp,
                    fontWeight: FontWeight.bold),
              ),
              iconColor: kGreenColor,
              collapsedIconColor: kRedColor,
            ),
            ExpansionTile(
              leading: Icon(
                Icons.star,
                color: kBlueColor,
              ),
              title: Text(
                "Other",
                style: kTextStyle.copyWith(
                    color: kBlueColor,
                    fontSize: 15.sp,
                    fontWeight: FontWeight.bold),
              ),
              iconColor: kGreenColor,
              collapsedIconColor: kRedColor,
            ),
          ],
        ),
      ),
    );
  }

  Row _rowSportOption(String text, bool isActive) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Checkbox(
          value: isActive,
          onChanged: (val) {},
          activeColor: kBlueColor,
        ),
        Icon(
          Icons.arrow_forward_ios,
          size: 14.sp,
          color: kRedColor.withOpacity(0.5),
        ),
        SizedBox(
          width: 4.w,
        ),
        Text(text,
            style: kTextStyle.copyWith(fontSize: 14.5.sp, color: kBlueColor))
      ],
    );
  }
}
