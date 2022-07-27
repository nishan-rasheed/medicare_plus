import 'package:flutter/material.dart';

class ErrorScreen extends StatelessWidget {
  const ErrorScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
             width: 300,
             height: 300,
             
             child: const Image(image: AssetImage('assets/images/error.png'),
             fit: BoxFit.fitHeight,),
            ),
          ),
          Text('SOMETHING WENT WRONG',
          style: TextStyle(
            fontSize: 25,
            color: Colors.indigo[800],
            fontWeight: FontWeight.bold,
          ),),
          const SizedBox(height: 20,),
          ElevatedButton(onPressed: (){}, child:const Text('Try Again'))
        ],
      ),
    );
  }
}
