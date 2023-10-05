import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jock_sports_app/constants/styles.dart';
import 'package:jock_sports_app/screens/login_screen.dart';
import 'package:lottie/lottie.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: kBlueColor,
        body: Container(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            children: [
              SizedBox(
                height: 25.h,
              ),
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
                  ),
                ],
              ),
              /*Icon(
                    Icons.person,
                    size: 70.sp,
                    color: kGreyColor,
                  ),*/
              Text(
                "NOTIFICATIONS",
                style: kTextStyle.copyWith(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 25.sp,
                ),
              ),
              SizedBox(
                height: 35.h,
              ),
              Expanded(
                child: Container(
                  //color: Colors.blue,
                  child: ListView.builder(
                      itemCount: 10,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            Container(
                              color: index == 0 ||
                                      index == 1 ||
                                      index == 2 ||
                                      index == 3
                                  ? Colors.lightBlue.withOpacity(0.1)
                                  : Colors.transparent,
                              child: ListTile(
                                leading: CircleAvatar(
                                  radius: 22.sp,
                                  backgroundColor: Colors.white,
                                  child: Lottie.asset(
                                      index == 0 ||
                                              index == 1 ||
                                              index == 2 ||
                                              index == 3
                                          ? "assets/animations/confirm.json"
                                          : "assets/animations/trophy.json",
                                      width: 50.w,
                                      height: 50.h),
                                ),
                                /*CircleAvatar(
                                  backgroundColor: kGreenColor,
                                  child: Icon(
                                    index == 0 ||
                                            index == 1 ||
                                            index == 2 ||
                                            index == 3
                                        ? Icons.notifications
                                        : Icons.thumb_up,
                                    color: Colors.white,
                                  ),
                                ),*/
                                title: Text(
                                    index == 0 ||
                                            index == 1 ||
                                            index == 2 ||
                                            index == 3
                                        ? "Bet confirmed"
                                        : "You Won!",
                                    style: kWhiteText),
                                subtitle: Text(
                                    index == 0 ||
                                            index == 1 ||
                                            index == 2 ||
                                            index == 3
                                        ? "Your bet is now confirmed, Good Luck!"
                                        : "Please check the withdrawal process",
                                    style: kGreyLightText),
                                trailing: Text(
                                    index == 0 ||
                                            index == 1 ||
                                            index == 2 ||
                                            index == 3
                                        ? "10:15 am"
                                        : "23/10/03",
                                    style: kGreyLightText.copyWith(
                                        fontSize: 10.sp, color: Colors.grey)),
                              ),
                            ),
                            index > 3
                                ? Divider(
                                    color: kGreyColor,
                                  )
                                : SizedBox()
                          ],
                        );
                      }),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
