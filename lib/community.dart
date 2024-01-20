import 'package:flutter/material.dart';

class community extends StatelessWidget {
  const community({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(50.0),
      child: Center(
        child: Column(
          children: [
            Icon(
              Icons.group_add,
              size: 260,
              color: Colors.white,
            ),
            Text('Stay connected with a community',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    wordSpacing: 1.5,
                    fontWeight: FontWeight.bold)),
            Text(
                'Community bring members together in topic_based groups, and make it easy to get admin announcements. Any community youre added to will appear here.',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  wordSpacing: 1,
                )),
            Container(
                margin: EdgeInsets.all(20),
                padding: EdgeInsets.fromLTRB(60, 15, 60, 15),
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 5, 139, 137),
                    borderRadius: BorderRadius.circular(20)),
                child: Text(
                  'Start your community',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 9,
                      wordSpacing: 1.5,
                      fontWeight: FontWeight.bold),
                ))
          ],
        ),
      ),
    );
  }
}
