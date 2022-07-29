import 'package:flutter/material.dart';
import 'package:medicare_plus/router/app_constants.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    //  extendBody: true,
      backgroundColor: Color(0Xff8883F0),
      body: SingleChildScrollView(
        child: Column(
          children: [
           Container(
            margin: EdgeInsets.only(top: 35,left: 15,bottom: 15),
            alignment: Alignment.topLeft,
             child: const Text('Messages',style: TextStyle(
               fontSize: 36,
               fontWeight: FontWeight.bold,
             ),
               ),
           ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 25,),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(18),
              ),           
              child: const TextField(
               decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'search here',
               ),
              ),
            ),
           const SizedBox(height: 10,),
            Container(
              // color: Colors.red,
              height: 560,
              width: MediaQuery.of(context).size.width-10,
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (BuildContext context, int index) {
                  return InkWell(
                    onTap: (){
                      Navigator.pushNamed(context, RouteConstants.drChat);
                    },
                    child: Container(                 
                      height: 100,
                      margin: EdgeInsets.only(top: 10),
                      padding: EdgeInsets.symmetric(horizontal: 10,),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(18),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                      decoration: BoxDecoration(                     
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(15)),
                      width: 70,
                      height: 80,
                    ),
                    Text('Nishan rasheed'),
                    Text('4.34 am')
                              
                        ],
                      )
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}