import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jock_sports_app/constants/styles.dart';
import 'package:jock_sports_app/screens/faq_screen.dart';
import 'package:jock_sports_app/screens/login_screen.dart';
import 'package:jock_sports_app/screens/notification_screen.dart';
import 'package:jock_sports_app/screens/place_bet_screen.dart';
import 'package:jock_sports_app/screens/profile_screen.dart';

import '../screens/my_bets_screen.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Color(0xFF0A2240), // Color de fondo hexadecimal
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
                margin: EdgeInsets.all(7),
                decoration: BoxDecoration(color: kBlueColor),
                accountName: Text(
                  "MR_CHUCK",
                  style: kWhiteText,
                ),
                accountEmail: Text("mr_chuck99@test.com"),
                currentAccountPicture: CircleAvatar(
                  radius: 30.r,
                  backgroundColor: Colors.white,
                  backgroundImage:
                      AssetImage("assets/images/jock_sports_logo.png"),
                )),
            ListTile(
              leading: Icon(Icons.home, color: Colors.white),
              title: Text('Home', style: kWhiteText),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            SizedBox(
              height: 10.h,
            ),
            ListTile(
              leading: Icon(Icons.notifications, color: Colors.white),
              title: Text('Notifications', style: kWhiteText),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => NotificationScreen()));
                // Acción a realizar cuando se toca la opción "Configuración"
              },
            ),
            SizedBox(
              height: 10.h,
            ),
            ListTile(
              leading: Icon(Icons.casino_outlined, color: Colors.white),
              title: Text('Bet Live', style: kWhiteText),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => PlaceBetScreen()));
                // Acción a realizar cuando se toca la opción "Configuración"
              },
            ),
            SizedBox(
              height: 10.h,
            ),
            ListTile(
              leading: Icon(Icons.person, color: Colors.white),
              title: Text('Profile', style: kWhiteText),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ProfileScreen()));
              },
            ),
            SizedBox(
              height: 10.h,
            ),
            ListTile(
              leading: Icon(Icons.attach_money_rounded, color: Colors.white),
              title: Text('My Bets', style: kWhiteText),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MyBetsScreen()));
              },
            ),
            SizedBox(
              height: 10.h,
            ),
            ListTile(
              leading: Icon(Icons.help, color: Colors.white),
              title: Text('FAQ', style: kWhiteText),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => FaqScreen()));
                // Acción a realizar cuando se toca la opción "Configuración"
              },
            ),
            SizedBox(
              height: 10.h,
            ),
            ListTile(
              leading: Icon(
                Icons.settings,
                color: Colors.white,
              ),
              title: Text('Settings', style: kWhiteText),
              onTap: () {
                // Acción a realizar cuando se toca la opción "Configuración"
              },
            ),
            SizedBox(
              height: 10.h,
            ),
            ListTile(
              leading: Icon(Icons.exit_to_app, color: Colors.white),
              title: Text('Sign Out', style: kWhiteText),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LoginScreen()));
                // Acción a realizar cuando se toca la opción "Cerrar Sesión"
              },
            ),
          ],
        ),
      ),
    );
  }
}
