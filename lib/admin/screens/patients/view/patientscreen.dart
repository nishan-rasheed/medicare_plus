import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class PatientScreen extends StatelessWidget {
 PatientScreen({Key? key}) : super(key: key);

 final CollectionReference userDetails = 
  FirebaseFirestore.instance.collection('userdetails');
  @override
  Widget build(BuildContext context) {
    return SafeArea(child:
     Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      automaticallyImplyLeading: false,
      title:const Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text('Patients List',
        style: TextStyle(
          color: Colors.black,
          fontSize: 34,
          fontWeight: FontWeight.bold
        ),),
      ),
      ),
        body: Column(
         children: [
          Container(
              height: 40,
              margin: const EdgeInsets.symmetric(horizontal: 25),
              decoration: BoxDecoration(
                // border: Border.all(),
                borderRadius: BorderRadius.circular(15),
                color: Color.fromARGB(221, 217, 217, 217),
              ),
              child: const TextField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    prefixIcon: Icon(Icons.search),
                    hintText: '    search here'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal:14,vertical: 10),
              child: Row(
                
                children:const [
                 
                  Text('Id',style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold
                  ),),
                  SizedBox(width: 18,),
                   Text('Name',style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold
                  ),),
                  SizedBox(width: 30),
                   Text('Phone',style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold
                  ),),
                  SizedBox(width: 48),
                  Text('Details',style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold
                  ),),
                ],
              ),
            ),
            Expanded(
              child: StreamBuilder(
                stream: userDetails.snapshots(),
                builder: (context,AsyncSnapshot<QuerySnapshot> snapshot) {
                  if (!snapshot.hasData) {
                    return CircularProgressIndicator();
                  }else{
                  var userData = snapshot.data!;
                  return ListView.separated(
                    itemCount: userData.docs.length,
                    separatorBuilder: (BuildContext context, int index) {
                      return Divider();
                    },
                    itemBuilder: (BuildContext context, int index) {
                      DocumentSnapshot document =userData.docs[index];
                      return Padding(
                        padding: const EdgeInsets.only(left:14,),
                        child: Row(
                        
                        children: [
                         const  Text('101',style: TextStyle(
                          fontSize: 17,),),
                          const SizedBox(width: 10,),
                           SizedBox(
                            width: 90,
                             child: Text(document['name'].toString(),   
                             style:const TextStyle(
                          fontSize: 17,),
                          ),
                           ),
                           
                         SizedBox(
                            width: 100,
                            child:Text(document['phone'].toString(),
                            style:const TextStyle(
                            fontSize: 17,),),
                          ),
                          const  SizedBox(width:15,),
                           SizedBox(height: 30,
                                    width: 90,
                                    child: ElevatedButton(
                                      onPressed: () {},
                                      style: ElevatedButton.styleFrom(
                                        primary: Color.fromARGB(255, 82, 188, 100),
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(15),
                                        ),
                                      ),
                                      child: const Text('Info'),
                                    ),
                                  ),
                        ],
                        ),
                      ) ;
                    },
                  );
                  }
                }
              ),
            ),
         ],
        ),
     ));
  }
}
