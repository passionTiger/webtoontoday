import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_core/firebase_core.dart';

//웹툰 담는 그리드뷰 빌더 위젯

class Test extends StatefulWidget {

  String? day;

  Test({required this.day});

  @override
  _TestState createState() => _TestState();
}

class _TestState extends State<Test> {
  final dRef = FirebaseDatabase.instance.reference();

  dynamic qq;

  activeListener() {
    dRef.child('금요일').onValue.forEach((element) {
      qq = element.snapshot.value;
    });
  }

  @override
  Widget build(BuildContext context) {
    activeListener();
    sleep(Duration(seconds: 10));
    print(qq);
    return MediaQuery.removePadding(
      context: context,
      removeTop: true,
      child: GridView.builder(
          //shrinkWrap: true,
          //physics: NeverScrollableScrollPhysics(),
          itemCount: 63,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            childAspectRatio: MediaQuery.of(context).size.width /
                (MediaQuery.of(context).size.height / 1.16),
          ),
          itemBuilder: (BuildContext context, int index) {
            index += 1;
            return Container(
                child: Container(
                    color: Colors.grey,
                    //alignment: Alignment.center,
                    child: Column(
                      children: [
                        Expanded(
                          child: Container(
                            child: SizedBox.expand(
                              child: FittedBox(
                                fit: BoxFit.fitWidth,
                                //이미지파일명을 숫자로 할 필요없이 db에서 받아온 제목리스트 사용하자. 'imgs/$day/list[index].toString.png'
                                child: Image.asset('imgs/${widget.day}/$index.png'),
                              ),
                            ),
                          ),
                          flex: 3,
                        ),
                        Expanded(
                          child: Container(
                            color: Colors.white,
                            // 아직 처리 x
                            //child: Text(qq[index-1]),
                          ),
                          flex: 1,
                        ),
                      ],
                    )),
                decoration: BoxDecoration(
                  color: Colors.grey,
                  border: Border.all(
                    width: 0.3,
                    color: Colors.black54,
                  ),
                ));
          }),
    );
  }
}

