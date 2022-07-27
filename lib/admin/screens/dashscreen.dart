import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:medicare_plus/admin/screens/Homescreen/home.dart';
import 'package:medicare_plus/admin/screens/chatscreen/chat.dart';
import 'package:medicare_plus/admin/screens/notification/notification.dart';
import 'package:medicare_plus/admin/screens/profile/profile.dart';

class DashScreen extends StatefulWidget {
  DashScreen({Key? key}) : super(key: key);

  @override
  State<DashScreen> createState() => _DashScreenState();
}

class _DashScreenState extends State<DashScreen> {
  int _selectedIndex = 0;
  List<Widget> navlist = <Widget>[
    const Homescreen(),
    const ChatScreen(),
    const NotificationScreen(),
    const Profilescreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      
      child: Scaffold(
        body: Center(
          child: navlist.elementAt(_selectedIndex),
        ),
        bottomNavigationBar: GNav(
         tabMargin: EdgeInsets.only(top:0),
          tabs: const [
            GButton(
              icon: Icons.home_filled,
              text: 'home',
            ),
            GButton(
              icon: Icons.chat,
              text: 'message',
            ),
            GButton(
              icon: Icons.calendar_month_outlined,
              text: 'schedule',
            ),
            GButton(
              icon: Icons.settings,
              text: 'settings',
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
