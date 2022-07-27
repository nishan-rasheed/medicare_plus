
import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget {
  final IconData icon;

   const CustomAppbar({Key? key, this.icon = Icons.search}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child:  Stack(
      children:[ 
        Container(
        color:Colors.red,
        height: 120,
        width: MediaQuery.of(context).size.width,
        child: Row(
          children: [
          Icon(icon)
          ],
        ),
        ),
        Positioned(
          top: 90,
          left: 0,
          right: 0,
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 35),
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade400,
                  blurRadius: 10,
                  spreadRadius: 1,
                  offset: Offset(0, 5)),
              ],
              border: Border.all(),
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
            ),
            child: const TextField(
              decoration: InputDecoration(
                hintText: 'search here',
                border: InputBorder.none
              ),
            ),),
        )
      ],
    ),

    );
  }
}
