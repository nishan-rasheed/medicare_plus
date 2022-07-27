import 'package:flutter/material.dart';

class DepartmentScreen extends StatelessWidget {
  const DepartmentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
        elevation: 0,
      automaticallyImplyLeading: false,
      title:const Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text('Departments',
        style: TextStyle(
          color: Colors.black,
          fontSize: 34,
          fontWeight: FontWeight.bold
        ),),
      ),
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 40,),
          child: GridView(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
             mainAxisSpacing:30,
              crossAxisCount: 2,
              crossAxisSpacing: 8,
            
            ),
            children: [
              
              Column(
                children: [
                  Container(
                    height: 150,
                    width: 150,
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                        fit: BoxFit.fitHeight,
                        image:AssetImage('assets/images/cardio.webp'),),
                      borderRadius: BorderRadius.circular(15),
                      
                    ),
                  ),
                 const SizedBox(height:2),
                const  Text('Cardiology',style: 
                  TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),),
                  
                ],
              ),
              Column(
                children: [
                  Container(
                    height: 150,
                    width: 150,
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                        fit: BoxFit.fitHeight,
                        image:AssetImage('assets/images/dental.webp'),),
                      borderRadius: BorderRadius.circular(15),
                      
                    ),
                  ),
                 const SizedBox(height:2),
                const  Text('Dental',style: 
                  TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),),               
                ],
              ),
              Column(
                children: [
                  Container(
                    height: 150,
                    width: 150,
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                        fit: BoxFit.fitHeight,
                        image:AssetImage('assets/images/ent.jpg'),),
                      borderRadius: BorderRadius.circular(15),
                      
                    ),
                  ),
                 const SizedBox(height:2),
                const  Text('ENT',style: 
                  TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),),
                  
                ],
              ),
              Column(
                children: [
                  Container(
                    height: 150,
                    width: 150,
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                        fit: BoxFit.fitHeight,
                        image:AssetImage('assets/images/eye.webp'),),
                      borderRadius: BorderRadius.circular(15),
                      
                    ),
                  ),
                 const SizedBox(height:2),
                const  Text('EYE',style: 
                  TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),),
                  
                ],
              ),
              Column(
                children: [
                  Container(
                    height: 150,
                    width: 150,
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                        fit: BoxFit.fitHeight,
                        image:AssetImage('assets/images/neuro.webp'),),
                      borderRadius: BorderRadius.circular(15),
                      
                    ),
                  ),
                 const SizedBox(height:2),
                const  Text('Neurology',style: 
                  TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),),
                  
                ],
              ),
              Column(
                children: [
                  Container(
                    height: 150,
                    width: 150,
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                        fit: BoxFit.fitHeight,
                        image:AssetImage('assets/images/ortho.webp'),),
                      borderRadius: BorderRadius.circular(15),
                      
                    ),
                  ),
                 const SizedBox(height:2),
                const  Text('Ortho',style: 
                  TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),),
                  
                ],
              ),
            ],),
        ),
      ),
    );
  }
}
