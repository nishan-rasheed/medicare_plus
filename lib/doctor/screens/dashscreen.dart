import 'package:flutter/material.dart';
import 'package:medicare_plus/doctor/screens/appointment/appoint.dart';
import 'package:medicare_plus/doctor/screens/chat/chat.dart';
import 'package:medicare_plus/doctor/screens/home/home.dart';
import 'package:medicare_plus/doctor/screens/settings/setting.dart';

class DrDashscreen extends StatefulWidget {
  const DrDashscreen({Key? key}) : super(key: key);

  @override
  State<DrDashscreen> createState() => _DrDashscreenState();
}

class _DrDashscreenState extends State<DrDashscreen> {
  int _selectedIndex = 0;
  List <Widget>drScreens = [
      const HomeScreen(),
      const ChatScreen(),
      const AppointScreen(),
      SettngScreen() , 
  ];
  void changeIndex(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: Center(child: drScreens.elementAt(_selectedIndex),),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(12),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          items:const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
             BottomNavigationBarItem(
              icon: Icon(Icons.chat),
              label: 'Chats',
            ),
             BottomNavigationBarItem(
              icon: Icon(Icons.notifications),
              label: 'events',
            ),
             BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'settings',
            ),
          ],
          currentIndex: _selectedIndex,
          onTap: changeIndex,
        ),
      ),
    );
  }
}