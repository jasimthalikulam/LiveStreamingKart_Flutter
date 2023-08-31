import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:live_app/screens/dashboard/home/home.dart';

import 'game/games.dart';
import 'me/me.dart';
import 'message/notifications.dart';
import 'moments/moments.dart';

class BottomNavigator extends StatefulWidget {
  static String routeName = "/BottomNavigator";
  const BottomNavigator({super.key});

  @override
  State<BottomNavigator> createState() => _BottomNavigatorState();
}

class _BottomNavigatorState extends State<BottomNavigator> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    Home(),
    Games(),
    Notifications(),
    Moments(),
    Me(),
  ];
  @override
  Widget build(BuildContext context) {
    double baseWidth = 360;
    double a = Get.width / baseWidth;
    double b = a * 0.97;
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: const Color.fromARGB(248, 188, 187, 187),
          boxShadow: [
            BoxShadow(
              blurRadius: 20,
              color: Colors.black.withOpacity(.1),
            )
          ],
        ),
        child: GNav(
          style: GnavStyle.oldSchool,
          rippleColor: Colors.black45,
          hoverColor: Colors.black45,
          textStyle: TextStyle(fontSize: 12 * a),
          iconSize: 18 * a,
          gap: 0,
          padding: EdgeInsets.all(6 * a),
          duration: const Duration(milliseconds: 400),
          tabBackgroundColor: Colors.transparent,
          backgroundColor: const Color(0xff9e26bc),
          tabs: const [
            GButton(
              text: 'Home',
              icon: Icons.home,
              iconColor: Colors.black,
              iconActiveColor: Colors.black,
            ),
            GButton(
              text: 'Games',
              icon: Icons.gamepad,
              iconColor: Colors.black,
              iconActiveColor: Colors.black,
            ),
            GButton(
              text: 'Message',
              icon: Icons.message,
              iconColor: Colors.black,
              iconActiveColor: Colors.black,
            ),
            GButton(
              text: 'Moments',
              icon: Icons.timelapse,
              iconColor: Colors.black,
              iconActiveColor: Colors.black,
            ),
            GButton(
              text: 'Me',
              icon: Icons.person,
              iconColor: Colors.black,
              iconActiveColor: Colors.black,
            ),
          ],
          selectedIndex: _selectedIndex,
          onTabChange: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
        ),
      ),
    );
  }
}
