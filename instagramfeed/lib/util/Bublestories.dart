import 'package:flutter/material.dart';

class BubleStories extends StatelessWidget {
  final String text;
  BubleStories({required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.transparent,
                  image: new DecorationImage(
                      image: AssetImage('assets/field-6574455__480.jpg')))),
          SizedBox(
            height: 10,
          ),
          Text(text)
        ],
      ),
    );
  }
}
