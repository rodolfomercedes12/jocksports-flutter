import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jock_sports_app/constants/styles.dart';
import 'package:jock_sports_app/screens/place_bet_screen.dart';
import 'package:jock_sports_app/widgets/bet_list.dart';
import 'package:jock_sports_app/widgets/bet_list_dialog.dart';
import 'package:jock_sports_app/widgets/bet_results_dialog.dart';
import 'package:panara_dialogs/panara_dialogs.dart';

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
                        builder: (context) => PlaceBetScreen(),
                      ));
                } else if (currentIndex == 1) {
                  /*showDialog(
                      context: context,
                      builder: (context) {
                        return BetResultsDialog();
                      });*/
                  /*PanaraInfoDialog.show(
                    context,
                    title: "Hello",
                    message: "This is the PanaraInfoDialog",
                    buttonText: "Okay",
                    color: kBlueColor,
                    //imagePath: "assets/images/jock_sports_logo.png",
                    onTapDismiss: () {
                      Navigator.pop(context);
                    },
                    panaraDialogType: PanaraDialogType.custom,
                    barrierDismissible:
                        false, // optional parameter (default is true)
                  );*/
                  AwesomeDialog(
                    context: context,
                    dialogType: DialogType.noHeader,
                    customHeader: Image.asset(
                      "assets/images/jock_sports_logo.png",
                      width: 100.w,
                      height: 100.h,
                    ),
                    animType: AnimType.rightSlide,
                    title: 'Screen Not Available',
                    titleTextStyle: kBlueText.copyWith(fontSize: 20.sp),
                    desc: 'Sorry, this screen is not available yet.',
                    btnOkColor: kBlueColor,
                    btnCancelOnPress: () {},
                    btnOkOnPress: () {},
                  )..show();
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
