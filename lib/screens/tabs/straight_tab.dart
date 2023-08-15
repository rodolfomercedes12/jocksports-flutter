import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jock_sports_app/constants/styles.dart';

class StraightTab extends StatelessWidget {
  const StraightTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 450.h,
      //color: Colors.teal,
      child: SingleChildScrollView(
        child: Column(
          children: [
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
            ),
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
}
