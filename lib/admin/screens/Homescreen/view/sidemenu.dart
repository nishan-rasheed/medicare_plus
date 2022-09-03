import 'package:flutter/material.dart';
import 'package:medicare_plus/router/app_constants.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.red,
      width: 250,
      child: ListView(
        children: [
          DrawerHeader(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                CircleAvatar(
                  backgroundImage: AssetImage('assets/images/doc2.jpg'),
                  radius: 50,
                ),
                Text('Admin'),
              ],
            ),
          ),
          InkWell(
         onTap: () => Navigator.pushNamed(context,RouteConstants.doctorscreen),
            child: const ListTile(
              iconColor:  Colors.white,
              textColor: Colors.white,
              leading: Icon(Icons.local_hospital),
              title: Text('Doctors'),
            ),
          ),
          const Padding(
            padding:EdgeInsets.symmetric(horizontal: 15),
            child: Divider(),
          ),
          InkWell(
            onTap: () => Navigator.pushNamed(context,RouteConstants.patientscreen),
            child: const ListTile(
              iconColor:  Colors.white,
              textColor: Colors.white,
              leading: Icon(Icons.bed),
              title: Text('Patients'),
            ),
          ),
          const Padding(
            padding:EdgeInsets.symmetric(horizontal: 15),
            child: Divider(),
          ),
          InkWell(
            onTap: () => Navigator.pushNamed(context,RouteConstants.departmentscreen),
            child: const ListTile(
              iconColor:  Colors.white,
              textColor: Colors.white,
              leading: Icon(Icons.local_hospital),
              title: Text('Departments'),
            ),
          ),
          const Padding(
            padding:EdgeInsets.symmetric(horizontal: 15),
            child: Divider(),
          ),
          const  InkWell(
            child:  ListTile(
              iconColor:  Colors.white,
              textColor: Colors.white,
              leading: Icon(Icons.local_hospital),
              title: Text('Schedules'),
            ),
          ),
          const Padding(
            padding:EdgeInsets.symmetric(horizontal: 15),
            child: Divider(),
          ),
         const  InkWell(
            child:ListTile(
              iconColor:  Colors.white,
              textColor: Colors.white,
              leading: Icon(Icons.local_hospital),
              title: Text('Appointments'),
            ),
          ),
          const Padding(
            padding:EdgeInsets.symmetric(horizontal: 15),
            child: Divider(),
          ),
        ],
      ),
    );
  }
}
