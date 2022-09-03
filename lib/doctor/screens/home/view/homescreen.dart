import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:medicare_plus/doctor/screens/dashscreen.dart';
import 'package:medicare_plus/router/app_constants.dart';

import '../../../../app_constants/collection_constants.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0Xff8883F0),
      body: Column(
        children: [
          StreamBuilder<DocumentSnapshot<Object?>>(
            stream:FirebaseFirestore.instance.collection(doctorCollection)
            .doc(FirebaseAuth.instance.currentUser!.uid).snapshots(),
            builder: (context, snapshot) {
              if(!snapshot.hasData){
                 return CircularProgressIndicator();
              }
              var doc = snapshot.data!;
              return ListTile(
                contentPadding: const EdgeInsets.only(top: 25,left: 20,right: 20),
                title:const Text('Welcome',style: TextStyle(
                  fontSize: 28,
                ),),
                subtitle:  Text(doc['name'],style:const TextStyle(
                  fontSize: 25,
                ),),
                trailing: InkWell(
                    onTap: (){
                    Navigator.pushNamed(context, RouteConstants.drProfile);
                    },
                    child: Container(
                      decoration: BoxDecoration( 
                       image: DecorationImage(image :NetworkImage(doc['image'])),                    
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),),
                      width: 50,
                      height: 50,
                    ),
                  ),
              );
            }
          ),
         const SizedBox(height: 130,),
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
