import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0Xff8883F0),
      body: Column(
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
            height: 480,
            width: MediaQuery.of(context).size.width-30,
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (BuildContext context, int index) {
                return Container(                 
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
                );
              },
            ),
          )
        ],
      ),
    );
  }
}