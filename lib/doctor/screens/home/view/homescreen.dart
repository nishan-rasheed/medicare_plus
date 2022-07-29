import 'package:flutter/material.dart';
import 'package:medicare_plus/router/app_constants.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0Xff8883F0),
      body: Column(
        children: [
          ListTile(
            contentPadding: const EdgeInsets.only(top: 25,left: 20,right: 20),
            title:const Text('Welcome',style: TextStyle(
              fontSize: 28,
            ),),
            subtitle: const Text('Dr.john',style: TextStyle(
              fontSize: 25,
            ),),
            trailing: InkWell(
                onTap: (){
                Navigator.pushNamed(context, RouteConstants.drProfile);
                },
                child: Container(
                  decoration: BoxDecoration(                    
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),),
                  width: 50,
                  height: 50,
                ),
              ),
          ),
          SizedBox(height: 130,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                decoration: BoxDecoration(
                   color: Colors.white,
                   borderRadius: BorderRadius.circular(17),
                ),
                height: 200,
                width: 140 ,              
          ),
          Container(
                decoration: BoxDecoration(
                   color: Colors.white,
                   borderRadius: BorderRadius.circular(17),
                ),
                height: 200,
                width: 140 ,              
          ),
            ],
          )
        ],
      ),

    );
  }
}