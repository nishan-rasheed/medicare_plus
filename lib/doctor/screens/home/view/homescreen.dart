import 'package:flutter/material.dart';
import 'package:medicare_plus/router/app_constants.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0Xff8883F0),
      body: Column(
        children: [
          ListTile(
            contentPadding: EdgeInsets.only(top: 25,left: 20,right: 20),
            title: Text('Welcome',style: TextStyle(
              fontSize: 28,
            ),),
            subtitle: Text('Dr.john',style: TextStyle(
              fontSize: 25,
            ),),
            trailing: InkWell(
                onTap: (){
                Navigator.pushNamed(context, RouteConstants.drProfile);
                },
                child: Container(
                  decoration: BoxDecoration(
                      // image:const DecorationImage(
                      //   image: AssetImage('assets/images/user.png'),
                      // ),
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15)),
                  width: 50,
                  height: 50,
                ),
              ),
          )
        ],
      ),

    );
  }
}