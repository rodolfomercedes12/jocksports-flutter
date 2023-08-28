import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jock_sports_app/constants/styles.dart';
import 'package:jock_sports_app/screens/bets_confirmed_screen.dart';
import 'package:jock_sports_app/screens/tabs/history_tab.dart';
import 'package:jock_sports_app/screens/tabs/straight_tab.dart';
import 'package:jock_sports_app/screens/tabs/updates_tab.dart';
import 'package:jock_sports_app/widgets/custom_appbar.dart';
import 'package:jock_sports_app/widgets/custom_gamble_text.dart';
import 'package:jock_sports_app/widgets/custom_tabs.dart';

class HomScreen extends StatelessWidget {
  HomScreen({Key? key}) : super(key: key);

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

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

              CustomTabs(),
              //HistoryTab(),
              //UpdatesTab(),
              //StraightTab(),
              //BetsConfirmedScreen(),
              CustomGambleText(),
            ],
          ),
        ),
      ),
    );
  }
}
