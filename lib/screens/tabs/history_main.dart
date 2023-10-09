import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jock_sports_app/constants/styles.dart';
import 'package:jock_sports_app/screens/history_year.dart';

import '../history_day.dart';

class HistoryTab extends StatefulWidget {
  @override
  State<HistoryTab> createState() => _HistoryTabState();
}

class _HistoryTabState extends State<HistoryTab> {
  List<String> listOptions = ["DAY", "WEEK", "MONTH", "YEAR"];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Container(
        width: double.infinity,
        height: 490.h,
        //color: Colors.blue,
        child: Column(
          children: [
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 20.h),
                child: Container(
                    //color: Colors.red,
                    width: double.infinity,
                    height: 40.h,
                    child: TabBar(
                        labelColor: kBlueColor,
                        labelStyle: kBlueText,
                        indicatorColor: kBlueColor,
                        unselectedLabelColor: kGreyColor,
                        unselectedLabelStyle: kGreyLightText,
                        tabs: [
                          Tab(
                            text: "DAY",
                          ),
                          Tab(
                            text: "WEEK",
                          ),
                          Tab(
                            text: "MONTH",
                          ),
                          Tab(
                            text: "YEAR",
                          ),
                        ])
                    /*ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: listOptions.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: EdgeInsets.only(right: 70.w),
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                currentIndex = index;
                              });
                            },
                            child: Text(
                              listOptions[index],
                              style: currentIndex == index
                                  ? kGreyLightText
                                  : kBlueText,
                            ),
                          ),
                        );
                      }),*/
                    )),
            /*SizedBox(
              height: 20.h,
            ),*/
            Expanded(
              child: TabBarView(children: [
                HistoryDay(),
                Container(
                  //color: Colors.teal,
                  child: Center(
                    child: Text(
                      "Comming Soon...",
                    ),
                  ),
                ),
                Container(
                  //color: Colors.teal,
                  child: Center(
                    child: Text(
                      "Comming Soon...",
                    ),
                  ),
                ),
                HistoryYear(),
              ]),
            )
          ],
        ),
      ),
    );
  }
}
