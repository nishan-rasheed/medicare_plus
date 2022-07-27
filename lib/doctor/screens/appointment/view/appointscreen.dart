

import 'package:flutter/material.dart';
import 'package:medicare_plus/doctor/screens/appointment/appoint.dart';


class AppointScreen extends StatelessWidget {
  const AppointScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(     
        appBar: AppBar(
          automaticallyImplyLeading: false,
          centerTitle: true,
          title: const Text('Appointments'),
          backgroundColor: const Color(0Xff8883F0),
          bottom: const TabBar(
            tabs:[
              Text('Pending'),
              Text('Completed')
            ],),
        ),
        body: const TabBarView(children: [
          // UpComing(),
          // History(),
          PendingScreen(),
          Text('data'),
        ]),
      ),
    );
  }
}