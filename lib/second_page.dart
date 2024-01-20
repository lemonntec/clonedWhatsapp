// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, must_be_immutable

import 'package:flutter/material.dart';

class secondPage extends StatelessWidget {
  secondPage({super.key});

  int currentNumber = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 0, 23, 20),
      appBar: AppBar(
        backgroundColor:
            Color.fromARGB(255, 2, 40, 36), // WhatsApp primary color
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(width: 10),
            Text(
              'Select Contact',
              style: TextStyle(
                fontSize: 14,
                wordSpacing: 1.5,
              ),
            ),
            Text(
              '100 Contacts ',
              style: TextStyle(
                fontSize: 10,
                wordSpacing: 1.5,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InkWell(
                  onTap: () {},
                  child: Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: Color.fromARGB(255, 2, 72, 65),
                        child: Icon(Icons.group),
                      ),
                      SizedBox(width: 20),
                      Text(
                        'New Group',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          wordSpacing: 1.5,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                InkWell(
                  onTap: () {},
                  child: Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: Color.fromARGB(255, 2, 72, 65),
                        child: Icon(Icons.group_add),
                      ),
                      SizedBox(width: 20),
                      Text(
                        'New Contact',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          wordSpacing: 1.5,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                InkWell(
                  onTap: () {},
                  child: Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: Color.fromARGB(255, 2, 72, 65),
                        child: Icon(Icons.group_outlined),
                      ),
                      SizedBox(width: 20),
                      Text(
                        'New Community',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          wordSpacing: 1.5,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Text(
                  'Contact on Whatsapp',
                  style: TextStyle(
                    color: Color.fromARGB(255, 101, 117, 116),
                    fontSize: 14,
                    wordSpacing: 1.5,
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                ...List.generate(
                  100,
                  ((index) {
                    currentNumber++;
                    return InkWell(
                      onTap: () {},
                      child: ListTile(
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
                                  'Contact $currentNumber',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    wordSpacing: 1.5,
                                  ),
                                ),
                                Text(
                                  'Message about the contact $currentNumber',
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 43, 65, 62),
                                    fontSize: 12,
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
      ),
    );
  }
}
