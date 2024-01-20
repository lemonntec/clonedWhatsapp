// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last, unused_import

import 'package:flutter/material.dart';
import 'callsPage.dart';
import 'chatpage.dart';
import 'second_page.dart';
import 'community.dart';
import 'statusPage.dart';

// class whatsapp extends StatelessWidget {
//   const whatsapp(MaterialApp materialApp, {super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: firstPage(),
//     );
//   }
// }

class firstPage extends StatelessWidget {
  firstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      initialIndex: 1,
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 0, 23, 20),
        appBar: AppBar(
          backgroundColor:
              Color.fromARGB(255, 2, 40, 36), // WhatsApp primary color
          title: Row(
            children: [
              SizedBox(width: 10),
              Text(
                'LemonnChat',
              ),
            ],
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.camera_alt_outlined),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.more_vert),
              onPressed: () {},
            ),
          ],
          bottom: TabBar(
            tabs: [
              Tab(
                child: Container(
                    width: 50.0, // Set the desired width
                    child: Align(
                      alignment: Alignment.center,
                      child: Icon(Icons.group),
                    )),
              ),
              Tab(text: 'Chats'),
              Tab(text: 'Status'),
              Tab(text: 'Calls'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            community().build(context),
            chatpage().build(context),
            statusPage().build(context),
            callPage().build(context),
          ],
        ),
        floatingActionButton: floatingActionBody(context),
      ),
    );
  }

  floatingActionBody(context) {
    return FloatingActionButton(
      backgroundColor: Color.fromARGB(255, 15, 157, 114),
      onPressed: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (BuildContext context) {
          return secondPage();
        }));
      },
      child: Icon(Icons.message),
    );
  }
}
