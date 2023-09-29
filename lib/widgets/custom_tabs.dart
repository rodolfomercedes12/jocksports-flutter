import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jock_sports_app/constants/styles.dart';
import 'package:jock_sports_app/screens/place_bet_screen.dart';

class CustomTabs extends StatefulWidget {
  CustomTabs({Key? key}) : super(key: key);

  @override
  State<CustomTabs> createState() => _CustomTabsState();
}

class _CustomTabsState extends State<CustomTabs> {
  final listLabels = [
    "STRAIGHT",
    "PARLAY",
    "TEASER",
    "BET LIVE",
    "HISTORY",
    "PENDING",
    "UPDATES"
  ];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 75.h,
      padding: EdgeInsets.all(3.0),
      color: Color.fromRGBO(149, 171, 190, 1.0),
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: listLabels.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: (() {
                setState(() {
                  currentIndex = index;
                });
                if (currentIndex == 3) {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => PlaceBetScreen()));
                }
              }),
              child: Container(
                margin: EdgeInsets.only(right: 3.w),
                width: 100.w,
                height: 50.h,
                color: currentIndex == index
                    ? Color.fromRGBO(149, 171, 190, 1.0)
                    : Color.fromRGBO(104, 134, 155, 1.0),
                child: Center(
                  child: Text(
                    listLabels[index],
                    style: kTextStyle.copyWith(
                        color: Colors.white,
                        fontSize: 12.5.sp,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            );
          }),
    );
  }
}
