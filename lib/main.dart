import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:webtoontoday/firebase/maketitlelist.dart';
import 'package:webtoontoday/tab_body.dart';
import 'exercise/homepage.dart';
import 'exercise/exercise.dart';
import 'exercise/exercise2.dart';
import 'screens/exercise3.dart';

const MaterialColor primaryBlack = MaterialColor(
  _blackPrimaryValue,
  <int, Color>{
    50: Color(0xFF000000),
    100: Color(0xFF000000),
    200: Color(0xFF000000),
    300: Color(0xFF000000),
    400: Color(0xFF000000),
    500: Color(_blackPrimaryValue),
    600: Color(0xFF000000),
    700: Color(0xFF000000),
    800: Color(0xFF000000),
    900: Color(0xFF000000),
  },
);
const int _blackPrimaryValue = 0xFF000000;

void main() => runApp(MakeTitle());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(primarySwatch: primaryBlack),
        debugShowCheckedModeBanner: false,
        //TabBar,TabBarView 사이 TabController 공유
        home: DefaultTabController(
            length: 3,
            child: Scaffold(
                body: TabBarView(
                  physics: NeverScrollableScrollPhysics(),
                  children: [
                    Exercise3(),
                    Container(
                      child: Center(
                        child: Text("Page2"),
                      ),
                    ),
                    Container(
                      child: Center(
                        child: Text("Page3"),
                      ),
                    )
                  ],
                ),
                bottomNavigationBar: TabBar(
                  labelColor: Colors.black,
                  unselectedLabelColor: Colors.black45,
                  indicatorColor: Colors.transparent,
                  tabs: [
                    Tab(
                      icon: Icon(Icons.home),
                      child: Text("홈"),
                    ),
                    Tab(
                      icon: Icon(Icons.backup_table),
                      child: Text("웹툰"),
                    ),
                    Tab(
                      icon: Icon(Icons.more_horiz),
                      child: Text("더보기"),
                    ),
                  ],
                ))));
  }
}
