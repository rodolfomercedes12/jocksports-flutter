import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jock_sports_app/constants/constants.dart';
import 'package:jock_sports_app/constants/styles.dart';
import 'package:jock_sports_app/screens/bets_confirmed_screen.dart';
import 'package:jock_sports_app/screens/tabs/history_tab.dart';
import 'package:jock_sports_app/screens/tabs/straight_tab.dart';
import 'package:jock_sports_app/screens/tabs/updates_tab.dart';
import 'package:jock_sports_app/widgets/custom_appbar.dart';
import 'package:jock_sports_app/widgets/custom_drawer.dart';
import 'package:jock_sports_app/widgets/custom_gamble_text.dart';
import 'package:jock_sports_app/widgets/custom_tabs.dart';
import 'package:jock_sports_app/widgets/game_time_and_continue.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  //final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: AppConstants.scaffoldKeyGlobal,
        drawer: CustomDrawer(),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            children: [
              CustomAppBar(AppConstants.scaffoldKeyGlobal),

              CustomTabs(),
              //HistoryTab(),
              //UpdatesTab(),
              StraightTab(),
              //BetsConfirmedScreen(),
              //CustomGambleText(),
              GameTimeAndContinue()
            ],
          ),
        ),
      ),
    );
  }
}
