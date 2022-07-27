import 'package:flutter/material.dart';

class DrProfileScreen extends StatelessWidget {
  const DrProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: const DecorationImage(
            alignment: Alignment.topCenter,
            image: AssetImage('assets/images/med.webp'),
          ),
          borderRadius: BorderRadius.circular(23),
          color: Colors.white,
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 10, bottom: 30),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 90, left: 85, bottom: 20),
                  child: Column(
                    children: const [
                      CircleAvatar(
                        backgroundImage: AssetImage('assets/images/dr1.webp'),
                        radius: 70,
                      ),
                      Text(
                        'Dr.John',
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text('+++++++++++++++++'),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    SizedBox(
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
                    SizedBox(width: 200, child: Text('doctor@gmail.com'))
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    SizedBox(
                      width: 100,
                      child: Text(
                        'Phone',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Text(':'),
                    SizedBox(width: 200, child: Text('745463533637'))
                  ],
                ),
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    SizedBox(
                      width: 100,
                      child: Text(
                        'Department',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Text(':'),
                    SizedBox(width: 200, child: Text('Cardiologist'))
                  ],
                ),
              ]),
        ),
      ),
    );
  }
}
