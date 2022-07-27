import 'package:flutter/material.dart';

class DoctorInfo extends StatelessWidget {
  const DoctorInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      decoration: BoxDecoration(
        image: const DecorationImage(
          alignment: Alignment.topCenter,
          image: AssetImage('assets/images/med.webp'),
        ),
        borderRadius: BorderRadius.circular(23),
        color: Colors.white,
      ),
      child: 
      // Stack(
      //   children: [
          // const Positioned(
          //   left: 90,
          //   top: 100,
          //   child: CircleAvatar(
          //     backgroundImage: AssetImage('assets/images/dr1.webp'),
          //     radius: 70,
          //   ),
          // ),
          Padding(
            padding: const EdgeInsets.only(left: 10,bottom: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
               Padding(
                  padding: EdgeInsets.only(top: 90,left: 85,bottom: 20),
                  child: Column(
                    children:const [
                      CircleAvatar(
                      backgroundImage: AssetImage('assets/images/dr1.webp'),
                      radius: 70,
                                ),
                                Text('Dr.John',style: TextStyle(
                                  fontSize: 28,
                                  fontWeight: FontWeight.bold,
                                ),),
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
                        style:
                            TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
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
                        style:
                            TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
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
                        style:
                            TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
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
                        style:
                            TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
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
                        style:
                            TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Text(':'),
                    SizedBox(width: 200, child: Text('Cardiologist'))
                  ],
                ),
               const  Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Text(
                    'Availability : ',
                    style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold),
                  ),
                ),
               const  Padding(
                  padding: EdgeInsets.only(bottom: 20),
                  child: Text('MON - Fri : 10 am -3 pm'),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(
                      height: 30,
                      width: 90,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          primary: Color.fromARGB(244, 222, 236, 146),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                        child: const Text(
                          'Edit',
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                      width: 90,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          primary: Color.fromARGB(255, 82, 188, 100),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                        child: const Text(
                          'chat',
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                      width: 90,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          primary: Color.fromARGB(255, 223, 107, 107),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                        child: const Text(
                          'Delete',
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
      //   ],
      // ),
    );
  }
}
