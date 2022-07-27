import 'package:flutter/material.dart';

class PendingScreen extends StatelessWidget {
  const PendingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor:  Color.fromARGB(255, 208, 206, 255),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.separated(
          itemCount: 4,
          separatorBuilder: (BuildContext context, int index) {
            return Divider();
          },
          itemBuilder: (BuildContext context, int index) {
            return Container(
              padding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
              height: 150,
              width: 200,
              color: Color(0XffF7FAFE),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const CircleAvatar(
                        radius: 30,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'Dr. Alex John',
                            style: TextStyle(
                              fontSize: 26,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text('Cardiologist'),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      RichText(
                        text: const TextSpan(
                          children: [
                            WidgetSpan(
                              child: Icon(Icons.calendar_month),
                            ),
                            TextSpan(
                                text: '12/06/2022',
                                style: TextStyle(
                                    color: Color.fromARGB(255, 61, 59, 59),),),
                          ],
                        ),
                      ),
                      RichText(
                          text: const TextSpan(children: [
                        WidgetSpan(
                          child: Icon(Icons.access_time_filled_sharp),
                        ),
                        TextSpan(
                            text: '10.45 Am',
                            style: TextStyle(
                                color: Color.fromARGB(255, 61, 59, 59),),),
                      ],),),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(
                          width: 150,
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Text('Cancel'),
                            style: ElevatedButton.styleFrom(
                                primary: Color.fromARGB(255, 242, 94, 89),),
                          )),
                      SizedBox(
                          width: 150,
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Text('Reschedule'),
                            style: ElevatedButton.styleFrom(
                                primary: Colors.blueAccent),
                          )),
                    ],
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}