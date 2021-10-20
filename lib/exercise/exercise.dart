import 'package:flutter/material.dart';
import 'mysliver.dart';

class Exercise extends StatefulWidget {
  @override
  _ExerciseState createState() => _ExerciseState();
}

class _ExerciseState extends State<Exercise> {
  final isSelected = <bool>[false, false, false];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(45.0),
        child: AppBar(
          elevation: 0.0,
          title: Text(
            "오늘의 웹툰",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.grey[800],
          actions: [
            IconButton(
                onPressed: () {
                  print("기모");
                },
                icon: Icon(Icons.search))
          ],
        ),
      ),
      body: CustomScrollView(
            slivers: <Widget>[
              renderSliverListAd(),
              renderHeader(),
              renderSliverGrid(),
            ],
          ),
      

      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "홈",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.backup_table),
            label: "웹툰",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.more_horiz),
            label: "더보기",
          ),
        ],
      ),
    );
  }
}
