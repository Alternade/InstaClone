import 'package:flutter/material.dart';
import 'package:instagramfeed/util/Bublestories.dart';
import 'package:instagramfeed/util/User_space.dart';

class UserHome extends StatelessWidget {
  final List people = [
    'Bio',
    'Essence',
    'XohnXina',
    'German',
    'Mulla',
    'SnakeEyes'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Instagram',
              style: TextStyle(color: Colors.black),
            ),
            Row(children: [
              Icon(
                Icons.add,
                color: Colors.black,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Icon(
                  Icons.share,
                  color: Colors.black,
                ),
              ),
              Icon(
                Icons.favorite,
                color: Colors.black,
              ),
            ])
          ],
        ),
      ),
      body: Column(
        children: [
          //stories
          Container(
            height: 130,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: people.length,
                itemBuilder: (context, index) {
                  return BubleStories(
                    text: people[index],
                  );
                }),
          ),

          //user post
          Expanded(
              child: ListView.builder(
                  itemCount: people.length,
                  itemBuilder: (context, index) {
                    return UserPost(
                      name: people[index],
                    );
                  }))
        ],
      ),
    );
  }
}
