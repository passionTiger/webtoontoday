import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

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
          SliverAppBar(
            title: Text(
              "SliverAppBar",
              style: TextStyle(color: Colors.black),
            ),
            backgroundColor: Colors.grey,
          )
        ],
      ),
      //    SafeArea(
      //   child: Column(
      //     crossAxisAlignment: CrossAxisAlignment.stretch,
      //     children: [
      //       Container(
      //         height: 180.0,
      //         color: Colors.grey,
      //       ),
      //
      //     ],
      //   ),
      // ),
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
