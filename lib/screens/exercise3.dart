import 'package:flutter/material.dart';
import 'package:webtoontoday/tab_body.dart';
import 'package:firebase_database/firebase_database.dart';

class Exercise3 extends StatefulWidget {
  @override
  _ExerciseState3 createState() => _ExerciseState3();
}

class _ExerciseState3 extends State<Exercise3> with SingleTickerProviderStateMixin {

  late final TabController _tabController;
  final dayList = ['월', '화', '수', '목', '금', '토', '일', '열흘', '완결'];
  final dayListE = ['mon', 'tue', 'wed', 'thu', 'fri', 'sat', 'sun', 'ten', 'fin'];


  void initState() {
    super.initState();
    _tabController = TabController(length: dayList.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return NestedScrollView(
      headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
        return <Widget>[
          SliverAppBar(
            title: Text('오늘의 웹툰'),
            pinned: true,
            forceElevated: innerBoxIsScrolled,
            actions: [
              IconButton(onPressed: () {}, icon: Icon(Icons.add_outlined)),
              IconButton(onPressed: () {}, icon: Icon(Icons.search))
            ],
            bottom: TabBar(
              isScrollable: true,
              tabs: dayList.map((e)=>Tab(text: e)).toList(),
              controller: _tabController,
            ),
          ),
        ];
      },
      body: TabBarView(
        children: dayListE.map((e) => Test(day: e)).toList(),
        controller: _tabController,
      ),
    );
  }
}
