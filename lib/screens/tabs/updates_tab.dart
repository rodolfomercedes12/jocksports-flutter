import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jock_sports_app/constants/styles.dart';

class UpdatesTab extends StatelessWidget {
  UpdatesTab({Key? key}) : super(key: key);

  final listData = ["Customer Withdrawal", "Free Play Added"];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 455.h,
      //color: Colors.blue,
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 40.h,
            color: kBlueColor,
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("DESCRIPTION", style: kWhiteText),
                //Text("DATE", style: kWhiteText),
                //Text("AMOUNT", style: kWhiteText),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("DATE", style: kWhiteText),
                    SizedBox(
                      width: 50.w,
                    ),
                    Text("AMOUNT", style: kWhiteText),
                  ],
                )
              ],
            ),
          ),
          Expanded(
              child: ListView.builder(
                  itemCount: 13,
                  itemBuilder: (context, index) {
                    return Container(
                      width: double.infinity,
                      color: index % 2 == 0
                          ? Color.fromRGBO(235, 235, 235, 1.0)
                          : Colors.white,
                      padding: EdgeInsets.symmetric(horizontal: 10.w),
                      height: 40.h,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            //color: Colors.red,
                            width: 160.w,
                            child: Text(
                                (index == 4 || index == 7)
                                    ? "Free Play Added"
                                    : "Customer Withdrawal",
                                overflow: TextOverflow.ellipsis,
                                style: kBlueText.copyWith(fontSize: 14.sp)),
                          ),
                          Text("12/02/23",
                              style: kTextStyle.copyWith(
                                  fontSize: 13.sp, color: kGreyLight)),
                          Padding(
                            padding: EdgeInsets.only(right: 8.w),
                            child: Text(
                                (index == 4 || index == 7)
                                    ? "+\$350 "
                                    : "\$1000",
                                style: kTextStyle.copyWith(
                                  fontSize: 15.sp,

                                  color: (index == 4 || index == 7)
                                      ? kGreenColor
                                      : Color.fromRGBO(104, 134, 155, 1.0),
                                  //Color.fromRGBO(107, 129, 140, 1.0),
                                )),
                          )
                        ],
                      ),
                    );
                  }))
        ],
      ),
    );
  }
}
