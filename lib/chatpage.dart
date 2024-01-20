// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class chatpage extends StatelessWidget {
  // chatpage({super.key});

  int currentNumber2 = 0;

  int day = 0;
  int week = 1;
  int year = 23;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        SizedBox(height: 15),
        ...List.generate(
          50,
          ((index) {
            currentNumber2++;
            day++;
            week++;
            year++;
            return TextButton(
              onPressed: () {},
              child: ListTile(
                trailing: Text(
                  '$day/$week/$year',
                  style: TextStyle(
                      color: Color.fromARGB(255, 184, 223, 217),
                      fontSize: 8,
                      fontWeight: FontWeight.bold),
                ),
                title: Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage('image/image1.jpg'),
                    ),
                    SizedBox(width: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Contact $currentNumber2',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            wordSpacing: 1.5,
                          ),
                        ),
                        Text('Message about to contact $currentNumber2',
                            style: TextStyle(
                                color: Color.fromARGB(255, 43, 65, 62),
                                fontSize: 12,
                                wordSpacing: 1.5,
                                fontWeight: FontWeight.bold))
                      ],
                    ),
                  ],
                ),
              ),
            );
          }),
        ),
      ],
    );
  }
}
