import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:jock_sports_app/constants/constants.dart';
import 'package:jock_sports_app/constants/styles.dart';
import 'package:jock_sports_app/controllers/app_controller.dart';
import 'package:jock_sports_app/screens/bets_confirmed_screen.dart';
import 'package:jock_sports_app/screens/tabs/history_main.dart';
import 'package:jock_sports_app/screens/tabs/pending_bets_tab.dart';
import 'package:jock_sports_app/screens/tabs/straight_tab.dart';
import 'package:jock_sports_app/screens/tabs/updates_tab.dart';
import 'package:jock_sports_app/widgets/custom_appbar.dart';
import 'package:jock_sports_app/widgets/custom_drawer.dart';
import 'package:jock_sports_app/widgets/custom_gamble_text.dart';
import 'package:jock_sports_app/widgets/custom_tabs.dart';
import 'package:jock_sports_app/widgets/game_time_and_continue.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  //final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  final appController = Get.put(AppController());
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
              Obx(
                () => appController.currentTabIndex.value == 0
                    ? StraightTab()
                    : appController.currentTabIndex.value == 4
                        ? HistoryTab()
                        : appController.currentTabIndex.value == 5
                            ? PendingBetsTab()
                            : appController.currentTabIndex.value == 6
                                ? UpdatesTab()
                                : StraightTab(),
              ),
              //HistoryTab(),
              //UpdatesTab(),
              //StraightTab(),
              //BetsConfirmedScreen(),
              //PendingBetsTab(),
              CustomGambleText()
              //GameTimeAndContinue()
            ],
          ),
        ),
      ),
    );
  }
}
