// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class statusPage extends StatelessWidget {
  statusPage({super.key});

  int currentNumber1 = 0;

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
                    maxRadius: 25,
                    backgroundColor: Color.fromARGB(255, 2, 119, 107),
                    child: Icon(
                      Icons.upload,
                      size: 20,
                    ),
                  ),
                  SizedBox(width: 20),
                  Text(
                    'My Status',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      wordSpacing: 1.5,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Divider(
                color: const Color.fromARGB(255, 26, 63, 45),
                height: 20,
              ),
              SizedBox(
                height: 15,
              ),
              ...List.generate(
                20,
                ((index) {
                  currentNumber1++;
                  return InkWell(
                    onTap: () {},
                    child: ListTile(
                      title: Row(
                        children: [
                          GestureDetector(
                            onTap: () {},
                            child: CircleAvatar(
                              radius: 20,
                              backgroundImage: AssetImage('image/image1.jpg'),
                            ),
                          ),
                          SizedBox(width: 20),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '$currentNumber1 Status Update',
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
