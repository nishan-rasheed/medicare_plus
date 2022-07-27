import 'package:flutter/material.dart';
import 'package:medicare_plus/admin/screens/doctor/doctor.dart';

class DoctorList extends StatelessWidget {
  const DoctorList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const Padding(
              padding: EdgeInsets.all(14),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Doctors list',
                  style: TextStyle(
                    fontSize: 34,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Container(
              height: 40,
              margin: const EdgeInsets.symmetric(horizontal: 25),
              decoration: BoxDecoration(
                // border: Border.all(),
                borderRadius: BorderRadius.circular(15),
                color: Color.fromARGB(221, 217, 217, 217),
              ),
              child: const TextField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    prefixIcon: Icon(Icons.search),
                    hintText: '    search here'),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(19)),
                    height: 130,
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 30),
                          height: 90,
                          width: 70,
                          decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(
                              10,
                            ),
                            image: const DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage('assets/images/dr1.webp'),
                            ),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            const SizedBox(
                              height: 10,
                            ),
                            const Text(
                              'Dr.John Smith',
                              style: TextStyle(fontSize: 22),
                            ),
                            const Text(
                              'Cardiologist',
                              style: TextStyle(fontSize: 16),
                            ),
                            SizedBox(
                              width: 110,
                              child: ElevatedButton(
                                onPressed: () {
                                  showDialog<dynamic>(
                                      context: context,
                                      builder: (context) {
                                        return DoctorInfo();
                                      });
                                },
                                style: ElevatedButton.styleFrom(
                                  primary: Color.fromARGB(255, 82, 188, 100),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                ),
                                child: const Text('View'),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
