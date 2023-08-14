import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jock_sports_app/constants/styles.dart';
import 'package:jock_sports_app/widgets/custom_appbar.dart';

class HomScreen extends StatelessWidget {
  HomScreen({Key? key}) : super(key: key);

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final listLabels = ["STRAIGHT", "PARLAY", "TEASER", "BET LIVE"];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          key: _scaffoldKey,
          body: Container(
            width: double.infinity,
            height: double.infinity,
            child: Column(
              children: [
                CustomAppBar(),
                Container(
                  width: double.infinity,
                  height: 75.h,
                  padding: EdgeInsets.all(3.0),
                  color: Color.fromRGBO(149, 171, 190, 1.0),
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 4,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: EdgeInsets.only(right: 3.w),
                          width: 100.w,
                          height: 50.h,
                          color: Color.fromRGBO(104, 134, 155, 1.0),
                          child: Center(
                            child: Text(
                              listLabels[index],
                              style: kTextStyle.copyWith(
                                  color: Colors.white,
                                  fontSize: 12.5.sp,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        );
                      }),
                ),
                Container(
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
                ),
                Expanded(
                  child: Container(
                    width: double.infinity,
                    height: double.infinity,
                    color: kBlueColor,
                    child: Flex(
                      direction: Axis.horizontal,
                      children: [
                        Expanded(
                          flex: 2,
                          child: Container(
                              //color: Colors.red,
                              child: Image.asset(
                            "assets/images/jock_sports_logo.png",
                            width: 140.w,
                            height: 140.h,
                            fit: BoxFit.cover,
                          )),
                        ),
                        Expanded(
                          flex: 3,
                          child: Container(
                            width: double.infinity,
                            height: double.infinity,
                            //color: Colors.teal,
                            child: SingleChildScrollView(
                                child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 35.h,
                                ),
                                Text("GAMBLE RESPONSIBLY",
                                    style: kTextStyle.copyWith(
                                        fontSize: 14.sp,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold)),
                                SizedBox(
                                  height: 15.h,
                                ),
                                Text(
                                    "The content of this site is not intended to be a lure to gambling. Instead, the information we present is meant for nothing more than informational and entertainment purposes. JockSports.com is not liable for any losses that are incurred or problems that arise at online casinos or elsewhere after the reading and consideration of this site’s content. If you are gambling online utilizing information from this site, you are doing so completely and totally at your own risk.",
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 11.sp)),
                                SizedBox(
                                  height: 7.h,
                                ),
                                Text(
                                    "If you feel that you may have a gambling problem or addiction, there are many outlets by which you can seek help. Our Problem Gambling page outlines the various signs of problem gambling and highlights how one can get help. If you do not know what responsible gambling is, we suggest that you read this page.",
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 11.sp)),
                                SizedBox(
                                  height: 7.h,
                                ),
                              ],
                            )),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          )),
    );
  }
}
