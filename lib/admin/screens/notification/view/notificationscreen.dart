import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(
                        top: 22,
                        left: 20,
                      ),
                      child: Text(
                        'Notification',
                        style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(Icons.sort),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
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
                  height: 5,
                ),
                Expanded(
                  child: ListView.separated(
                    itemCount: 6,
                    separatorBuilder: (BuildContext context, int index) {
                      return const Divider(
                        thickness: 2,
                      );
                    },
                    itemBuilder: (BuildContext context, int index) {
                      return InkWell(
                        onTap: () {
                          showDialog<dynamic>(
                              context: context,
                              builder: (context) {
                                return Card(
                                  margin:const EdgeInsets.symmetric(
                                      horizontal: 30, vertical: 260),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      const Text(
                                        'Do you want to varify this user',
                                        style: TextStyle(fontSize: 20),
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                                        children: [
                                          SizedBox(
                                            width: 110,
                                            child: ElevatedButton(
                                                onPressed: () {},
                                                style: ElevatedButton.styleFrom(
                                                  primary: const Color.fromARGB(255, 237, 116, 107),
                                                    shape:
                                                        RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(15),
                                                ),),
                                                child: const Text('Reject'),),
                                          ),
                                          SizedBox(
                                            width: 110,
                                            child: ElevatedButton(
                                                onPressed: () {},
                                                style: ElevatedButton.styleFrom(
                                                  primary: Color.fromARGB(255, 82, 188, 100),
                                                    shape:
                                                        RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(15),
                                                ),),
                                                child: const Text('Varify'),),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                );
                                // Container(
                                //   margin: EdgeInsets.symmetric(horizontal: 50,vertical:250,),

                                //  child: Text('djndn'),
                                //   color: Colors.green,
                                // );
                              });
                        },
                        child: Row(
                        
                          children: [
                            Container(
                              margin: const EdgeInsets.symmetric(
                                 horizontal: 20,vertical: 6, ),
                              height: 80,
                              width: 60,
                              decoration: BoxDecoration(
                                  // border:Border.all(),
                                  borderRadius: BorderRadius.circular(15),
                                  image: const DecorationImage(
                                      image: AssetImage(
                                        'assets/images/dr1.webp',
                                      ),
                                      fit: BoxFit.fill)),
                            ),
                           const SizedBox(width: 10,),
                           const  SizedBox(
                              width: 150,
                              child: Text('Dr.john is waiting for verification',
                                    
                                style: TextStyle(fontSize: 16),
                              ),
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
        ),
      ),
    );
  }
}
