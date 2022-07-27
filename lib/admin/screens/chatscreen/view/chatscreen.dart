import 'package:flutter/material.dart';
import 'package:medicare_plus/router/app_constants.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor:const Color.fromARGB(221, 217, 217, 217),
          onPressed: (){},
          child:const Icon(Icons.message_sharp),),
        body: ListView(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 12, left: 10),
              child: Text(
                'Chats',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              height: 45,
              decoration: BoxDecoration(
                color: Color.fromARGB(221, 217, 217, 217),
                border: Border.all(),
                borderRadius: BorderRadius.circular(15),
              ),
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: const TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  prefixIcon: Icon(Icons.search),
                  hintText: 'Search ...',
                ),
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: const ScrollPhysics(),
              itemCount: 8,
              itemBuilder: (BuildContext context, int index) {
                return InkWell(
                  onTap:(){
                    Navigator.pushNamed(context, RouteConstants.chatscreen);
                  },
                  child: Container(
                   margin:const  EdgeInsets.only(bottom: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      // mainAxisSize: MainAxisSize.max,
                      children: [
                       CircleAvatar(
                        backgroundImage: AssetImage('assets/images/doc1.jpg'),
                          radius: 40,
                        ),
                        Column(
                         
                          children: const [
                            Text(
                              'Dr.Alex jon',
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                            SizedBox(height: 10,),
                            Text('hello.. how are you'),
                          ],
                        ),
                        const Text('5.38')
                      ],
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
