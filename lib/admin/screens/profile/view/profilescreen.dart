import 'package:flutter/material.dart';

class Profilescreen extends StatelessWidget {
  const Profilescreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: Color.fromARGB(255, 78, 93, 181),
      body: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                alignment: Alignment.topCenter,
                image: AssetImage('assets/images/med.webp'),
              ),
            ),
          ),
          const Positioned(
            top: 130,
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/images/doc2.jpg'),
              radius: 70,
            ),
          ),
          Column(
            
            children: [
              const SizedBox(height: 280),
              const Text(
                'Nishan Rasheed',
                style: TextStyle(
                  fontSize: 26,
                ),
              ),
              const Text(
                'ADMIN',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
             const   SizedBox(height: 30,),
              const Text(
                'MEDI CARE HOSPITAL',
                style: TextStyle(fontSize: 18),
              ),
              const Text('medicare@gmail.com'),
              const Text('CALICUT,KERALA'),
              const   SizedBox(height: 50,),
              const Text('Follow Us On'),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.whatsapp_sharp,
                    color: Colors.green,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Icon(
                    Icons.facebook_sharp,
                    color: Colors.blue,
                  ),
                  const SizedBox(
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
              const   SizedBox(height: 50,),
              ElevatedButton(
                onPressed: () {},
                child: const Text('log out'),
              ),
            ],
          )
        ],
      ),
    ));
  }
}
