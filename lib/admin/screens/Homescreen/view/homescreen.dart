import 'package:flutter/material.dart';
import 'package:medicare_plus/admin/screens/Homescreen/home.dart';

import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:percent_indicator/percent_indicator.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      
      bottom: false,
      child: Scaffold(  
        drawer: SideMenu(),
        appBar: AppBar(
        ),
        backgroundColor: Colors.white,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
           children: [
            CircularPercentIndicator(
              radius: 70,
                lineWidth: 10,
                percent: 0.8,
                // header:Text("Icon header",),
                center:Icon(
                  Icons.person_pin,
                  size: 50.0,
                  color: Colors.blue,
                ),
                backgroundColor: Colors.grey,
                progressColor: Colors.blue,
                animation: true,
              ),
              CircularPercentIndicator(
              radius: 70,
                lineWidth: 10,
                percent: 0.7,
                // header:Text("Icon header",),
                center:Icon(
                  Icons.person_pin,
                  size: 50.0,
                  color: Colors.blue,
                ),
                backgroundColor: Colors.grey,
                progressColor: Colors.blue,
                animation: true,
              ),
              LinearPercentIndicator(
               width: 300,
                    lineHeight: 30,
                    percent: 0.9,
                    progressColor: Colors.blue,
    
              )
           ],
        ),
      ),
    );
  }
}