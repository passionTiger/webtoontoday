import 'package:flutter/material.dart';
import 'package:webtoontoday/tab_body.dart';
import 'mysliver.dart';

class Exercise2 extends StatefulWidget {
  @override
  _ExerciseState2 createState() => _ExerciseState2();
}

class _ExerciseState2 extends State<Exercise2> with SingleTickerProviderStateMixin{
  final isSelected = <bool>[false, false, false];
  late final TabController _tabController;

  void initState() {
    super.initState();
    _tabController = TabController(length: 9, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: PreferredSize(
      //   preferredSize: Size.fromHeight(45.0),
      //   child: AppBar(
      //     elevation: 0.0,
      //     title: Text(
      //       "오늘의 웹툰",
      //       style: TextStyle(color: Colors.white),
      //     ),
      //     backgroundColor: Colors.grey[800],
      //     actions: [
      //       IconButton(
      //           onPressed: () {
      //             print("기모");
      //           },
      //           icon: Icon(Icons.search))
      //     ],
      //   ),
      // ),
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              title: Text('오늘의 웹툰'),
              pinned: true,
              floating: true,
              actions: [
                    IconButton(
                        onPressed: () {
                          print("기모");
                        },
                        icon: Icon(Icons.search))
                  ],
              forceElevated: innerBoxIsScrolled,
              bottom: TabBar(
                isScrollable: true,
                tabs: [
                  // TabList(day: '월'),
                  // TabList(day: '화'),
                  // TabList(day: '수'),
                  // TabList(day: '목'),
                  // TabList(day: '금'),
                  // TabList(day: '토'),
                  // TabList(day: '일'),
                  Container(
                    width: 26.0,
                    child: Tab(text: '열흘'),
                  ),
                  Container(
                    width: 26.0,
                    child: Tab(text: '완결'),
                  )
                ],
                controller: _tabController,
              ),
            ),
          ];
        },
        body: TabBarView(
          children: <Widget>[
            // DayList(day: '월'),
            // DayList(day: '화'),
            // DayList(day: '수'),
            // DayList(day: '목'),
            // DayList(day: '금'),
            // DayList(day: '토'),
            // DayList(day: '일'),
            // DayList(day: '열흘'),
            // DayList(day: '완결'),
          ],
          controller: _tabController,
        ),
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
