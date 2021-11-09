import 'package:flutter/material.dart';
import 'package:instagramfeed/util/ExploreGrid.dart';

class UserSearch extends StatelessWidget {
  const UserSearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Container(
            color: Colors.grey[300],
            child: Row(
              children: [
                Icon(Icons.search, color: Colors.grey[500]),
                Container(
                  child: Text(
                    'Search',
                    style: TextStyle(color: Colors.grey[500]),
                  ),
                )
              ],
            )),
      ),
      body: ExploreGrid(),
    );
  }
}
