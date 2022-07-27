import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

class ChatMessage extends StatelessWidget {
  const ChatMessage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blue,
        body:Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                const  Icon(Icons.arrow_back_ios_rounded),
                
                 Column(
                  children: [
                    Text('Dr.Alex jon',
                    style: TextStyle(
                      fontSize: 18,
                    ),),
                    Text('online'),
                  ],
                 ),
                 const  CircleAvatar(
                  radius: 25,
                  backgroundColor: Colors.white,
                  backgroundImage: AssetImage('assets/images/doc1.jpg'),
                 ),
                ],
              ),
            ),
            SizedBox(height: 10,),
           Expanded(
             child: Container(
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(topLeft:Radius.circular(30),topRight:Radius.circular(30),),
               color: Colors.white,
              ),
              child: ListView(
                children: [
                  Align(
                    heightFactor: 13.5,
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 50),
                      height: 45,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(221, 217, 217, 217),
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: const TextField(
                        decoration: InputDecoration(
                          hintText: '    type here ...',
                          border: InputBorder.none
                        ),
                      ))),
                ],
              ),
             ),
           )
          ],
        ),
      ),
    );
  }
}