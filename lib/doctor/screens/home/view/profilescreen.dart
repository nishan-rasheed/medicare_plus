import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:medicare_plus/app_constants/collection_constants.dart';
import 'package:medicare_plus/utils/color_scheme.dart';
  

  
class DrProfileScreen extends StatefulWidget {
  const DrProfileScreen({Key? key,}) : super(key: key);
  @override
  State<DrProfileScreen> createState() => _DrProfileScreenState();
}

class _DrProfileScreenState extends State<DrProfileScreen> {

File? image;
String? url;
ImagePicker imagePicker = ImagePicker();
Future getImage()async{
 var tempImg =await imagePicker.pickImage(source: ImageSource.gallery);
 setState(() {
   image = File(tempImg!.path);
 });
 String name = DateTime.now().millisecondsSinceEpoch.toString();
 var location = await FirebaseStorage.instance.ref().child('doctors').child(FirebaseAuth.instance.currentUser!.uid);
 UploadTask task = location.putFile(image!);
 TaskSnapshot snapshot = await task;
 url = await snapshot.ref.getDownloadURL();
 await FirebaseFirestore.instance.collection(doctorCollection).doc(FirebaseAuth.instance.currentUser!.uid).update({
  'image':url,
 });
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:AppColor.primary,
      body: Container(
        decoration: BoxDecoration(
          image: const DecorationImage(
            alignment: Alignment.topCenter,
            image: AssetImage('assets/images/med.webp'),
          ),
          borderRadius: BorderRadius.circular(23),
          color:AppColor.primaryLight,
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 10, bottom: 30,top: 30),
          child: StreamBuilder<DocumentSnapshot<Object?>>(
            stream:FirebaseFirestore.instance.collection(doctorCollection)
            .doc(FirebaseAuth.instance.currentUser!.uid).snapshots(),
            builder: (context, snapshot) {
              if(!snapshot.hasData){
               return CircularProgressIndicator();
              }
              var doc = snapshot.data!;
              return Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 90, left: 85, bottom: 20),
                      child: Column(
                        children: [
                          Stack(
                           
                            children:[
                              CircleAvatar(
                              backgroundImage:doc['image'] == ''? AssetImage('assets/images/dp.jpg') : NetworkImage(doc['image']) as ImageProvider,
                             radius: 70,
                            ),
                            Positioned(
                              left: 100,
                              top: 98,
                              child: InkWell(
                                onTap:getImage,
                                child: Container( 
                                  height: 35,
                                  width: 35, 
                                  margin:const  EdgeInsets.only(bottom: 10),    
                                   decoration: BoxDecoration(
                                    color: const Color.fromARGB(255, 35, 130, 59),
                                    borderRadius: BorderRadius.circular(20) ,   
                                   ),
                                  child:const  Icon(Icons.add,color: Colors.white,),
                                ),
                              ),
                            ),],
                          ),
                         const SizedBox(height: 10,),
                           Text(
                            doc['name'],
                            style:const TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                         const  Text('+++++++++++++++++'),
                        ],
                      ),
                    ),
                   const SizedBox(height: 40,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                       const SizedBox(
                          width: 100,
                          child: Text(
                            'Email',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Text(':'),
                        SizedBox(width: 200, child: Text(doc['email']))
                      ],
                    ),
                    const SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                       const SizedBox(
                          width: 100,
                          child: Text(
                            'Phone',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Text(':'),
                        SizedBox(width: 200, child: Text(doc['phone']))
                      ],
                    ),
                    const SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        SizedBox(
                          width: 100,
                          child: Text(
                            'Address',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Text(':'),
                        SizedBox(width: 200, child: Text('Calicut,kerala'))
                      ],
                    ),
                    const SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        SizedBox(
                          width: 100,
                          child: Text(
                            'Qualification',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Text(':'),
                        SizedBox(width: 200, child: Text('MBBS'))
                      ],
                    ),
                    const SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const SizedBox(
                          width: 100,
                          child: Text(
                            'Department',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                        ),
                       const Text(':'),
                        SizedBox(width: 200, child: Text(doc['department']))
                      ],
                    ),
                    const SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children:[
                        const SizedBox(
                          width: 100,
                          child: Text(
                            'Experience',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                        ),
                       const Text(':'),
                        SizedBox(width: 200, child: Text(doc['exp']))
                      ],
                    ),
                  ]);
            }
          ),
        ),
      ),
    );
  }
}
