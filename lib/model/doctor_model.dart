import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';

class DoctorModel{
 final String name;
 final String email;
 final String department;
 final String exp;
 final String phone;
 final String userId;
 final String image;
  DoctorModel({
    required this.name,
    required this.email,
    required this.department,
    required this.exp,
    required this.phone,
    required this.userId,
    required this.image,
  });

 factory DoctorModel.fromDocument(DocumentSnapshot doc) {
  return DoctorModel(
    name:doc['name'].toString(), 
    email:doc['email'].toString(), 
    department:doc['department'].toString(), 
    exp:doc['exp'].toString(),
    phone:doc['phone'].toString(),
    image:doc['image'].toString(), 
     userId:doc['userid'].toString(),

  );
 }
}
