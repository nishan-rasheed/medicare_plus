import 'package:flutter/material.dart';
import 'package:medicare_plus/router/app_constants.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     backgroundColor: Colors.indigo,
     body:ListView(
      children: [
        Container(
          alignment: Alignment.center,
          margin:const EdgeInsets.symmetric(horizontal: 25,vertical: 50,),
          child:const Text('Signup',style: TextStyle(
            color: Colors.white,
            fontSize: 44,
            fontWeight: FontWeight.bold,
          ),),
        ),
        Container(
      margin:const EdgeInsets.symmetric(horizontal: 25,vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: Colors.white,
      ),
      child: const TextField(
        decoration: InputDecoration(
          hintText: '  Full Name',
          border: InputBorder.none,
        ),
      ),),
      Container(
      margin:const EdgeInsets.symmetric(horizontal: 25,vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: Colors.white,
      ),
      child: const TextField(
        decoration: InputDecoration(
          hintText: '  email',
          border: InputBorder.none
        ),
      ),),
      Container(
      margin:const EdgeInsets.symmetric(horizontal: 25,vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: Colors.white,
      ),
      child: const TextField(
        decoration: InputDecoration(
          hintText: '  experience',
          border: InputBorder.none,
        ),
      ),),
      Container(
      margin:const EdgeInsets.symmetric(horizontal: 25,vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: Colors.white,
      ),
      child: const TextField(
        decoration: InputDecoration(
          hintText: '  department',
          border: InputBorder.none,
        ),
      ),),
      Container(
      margin:const EdgeInsets.symmetric(horizontal: 25,vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: Colors.white,
      ),
      child: const TextField(
        decoration: InputDecoration(
          hintText: '  phone',
          border: InputBorder.none,
        ),
      ),),
      Container(
        margin:const EdgeInsets.symmetric(horizontal: 45,vertical: 20),
        
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: Colors.redAccent,
            
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(17),
            ),
          ),
          onPressed: (){}, 
          child: const Text('submit'),),
      ),
     const SizedBox(height: 30,),
       Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Already varified ?',
              style: TextStyle(color: Colors.white),),
              TextButton(onPressed: (){
                Navigator.pushNamed(context,RouteConstants.loginscreen);
              }, child: const Text('login here'),),
            ],
           ),
      ],
     ),
    );
  }
}
