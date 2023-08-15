import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jock_sports_app/constants/styles.dart';

class CustomGambleText extends StatelessWidget {
  const CustomGambleText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
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
                            color: Colors.white.withOpacity(0.6),
                            fontSize: 11.sp)),
                    SizedBox(
                      height: 7.h,
                    ),
                    Text(
                        "If you feel that you may have a gambling problem or addiction, there are many outlets by which you can seek help. Our Problem Gambling page outlines the various signs of problem gambling and highlights how one can get help. If you do not know what responsible gambling is, we suggest that you read this page.",
                        style: TextStyle(
                            color: Colors.white.withOpacity(0.6),
                            fontSize: 11.sp)),
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
    );
  }
}
