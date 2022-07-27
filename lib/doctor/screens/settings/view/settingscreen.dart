import 'package:flutter/material.dart';

class SettngScreen extends StatefulWidget {
  SettngScreen({Key? key}) : super(key: key);

  @override
  State<SettngScreen> createState() => _SettngScreenState();
}

class _SettngScreenState extends State<SettngScreen> {

   bool _nightMode = false;
  bool _emailAlert = false;
  
  TextStyle titleText = const TextStyle(
          fontSize: 22,
          color:  Color(0Xff8883F0),
          fontWeight: FontWeight.bold,
          );

  TextStyle greyText = const TextStyle(
          fontSize: 18,
          color: Colors.grey,);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Scaffold(
        backgroundColor: const Color(0XffF7FAFE),
        body: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
    children: [
      ListTile(
          title: Text('Languages',style: titleText,),
          subtitle: Text('English',style: greyText,),
          trailing:const  Icon(Icons.arrow_forward_ios_outlined),
          onTap: (){},
      ),
      ListTile(
          title: Text('Leave Form',style: titleText,),
          subtitle: Text('apply for leave',style: greyText,),
          trailing: const Icon(Icons.arrow_forward_ios_outlined),
          onTap: (){},
      ),
       ListTile(
          title: Text('Change password',style: titleText,),      
          trailing: const Icon(Icons.arrow_forward_ios_outlined),
          onTap: (){},
      ),
      SwitchListTile(
          activeColor:const  Color(0Xff8883F0),
          title: Text('Night Mode',style: titleText,),
          subtitle: Text('Off',style: greyText,),
          value:_nightMode,
          onChanged: (bool value){
            setState(() {
             _nightMode = value ;
            });
          },),
          SwitchListTile(
          activeColor:const  Color(0Xff8883F0),
          title: Text('Email Notification',style: titleText,),
          subtitle: Text('Off',style: greyText,),
          value:_emailAlert,
          onChanged: (bool value){
            setState(() {
             _emailAlert = value ;
            });
          },),

          Container(
            height: 160,
            width: 300,
            
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const Text('medicare@gmail.com',style: TextStyle(
                  color: Color(0Xff8883F0),
                  fontSize: 18,
                ),),
               const  SizedBox(height: 5,),
                const Text('contact : 0476 2343544',style: TextStyle(
                  color:Color(0Xff8883F0),
                  fontSize: 15,
                ),),
                const SizedBox(height: 5,),
                const Text('Calicut,kerala',style: TextStyle(
                 color:Color(0Xff8883F0),
                  fontSize: 15,
                ),),
               const  SizedBox(height: 40,),
                const Text('Follow Us On',style: TextStyle(                 
                 
                  fontSize: 18,
                ),),
                const SizedBox(height: 10,),
                 Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:  [
                   const Icon(
                      Icons.whatsapp_sharp,
                      color: Colors.green,
                    ),
                 const  SizedBox(
                      width: 10,
                    ),
                  const  Icon(
                      Icons.facebook_sharp,
                      color: Colors.blue,
                    ),
                  const  SizedBox(
                      width: 10,
                    ),
                    SizedBox(
                      height: 20,
                      width: 20,
                      child: Image.asset(
                        'assets/images/instag.png',
                        color: Colors.pink,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
               ],
          ),
        ),
      ),);
  }
}