// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class callPage extends StatelessWidget {
  callPage({super.key});

  int currentNumber3 = 0;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 25,
              ),
              Row(
                children: [
                  CircleAvatar(
                    maxRadius: 40,
                    backgroundColor: Color.fromARGB(255, 2, 72, 65),
                    child: Icon(
                      Icons.insert_link_rounded,
                      size: 40,
                    ),
                  ),
                  SizedBox(width: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Create call link',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 13,
                          wordSpacing: 1.5,
                        ),
                      ),
                      SizedBox(width: 20),
                      Text(
                        'Share a link for your WhatsApp call',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 8,
                          wordSpacing: 1.5,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    'Recent Call',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 13,
                      wordSpacing: 1.5,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              ...List.generate(
                3,
                ((index) {
                  currentNumber3++;
                  return ListTile(
                    trailing: Icon(
                      Icons.video_camera_back_rounded,
                      color: const Color.fromARGB(255, 76, 175, 162),
                    ),
                    title: Row(
                      children: [
                        CircleAvatar(
                          radius: 25,
                          backgroundImage: AssetImage('image/image1.jpg'),
                        ),
                        SizedBox(width: 20),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '$currentNumber3 Status Update',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                wordSpacing: 1.5,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                }),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
