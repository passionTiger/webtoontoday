import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:kakao_flutter_sdk/all.dart';

class MakeTitle extends StatefulWidget {
  const MakeTitle({Key? key}) : super(key: key);

  @override
  _MakeTitleState createState() => _MakeTitleState();
}

class _MakeTitleState extends State<MakeTitle> {

  dynamic display = 'aa';
  dynamic qq;

  void initstate() {
    super.initState();
  }
  final dRef = FirebaseDatabase.instance.reference();
  activeListener() async{
    dynamic a = [];
    await dRef.child('금요일').onValue.forEach((element) {
      qq = element.snapshot.value;
    });
  }
  // List<Need> _needs = [];
  //
  // @override
  // void initState() {
  //   super.initState();
  //   _setupNeeds();
  // }
  //
  // _setupNeeds() async {
  //   List<Need> needs = await DatabaseService.getNeeds();
  //   setState(() {
  //     _needs = needs;
  //   });
  // }


  @override
  Widget build(BuildContext context) {
    activeListener();
    return MaterialApp(
        home: Scaffold(
            body: Column(
                children:[
                  Container(
                      child: Text(qq[0])
                  ),
                  ElevatedButton(onPressed: activeListener, child: Text("dd"))
                ])
        )
    );
  }
}

// class Need {
//   final dynamic title;
//
//   Need({
//   this.title
//   });
//
//   Need.fromSnapshot(DataSnapshot snapshot) :
//   title = snapshot.value;
//
//   toJson() {
//     return {
//     "title": title,
//     };
//   }
// }
//
// class DatabaseService {
//
//   static Future<List<Need>> getNeeds() async {
//     Query needsSnapshot = await FirebaseDatabase.instance
//         .reference()
//         .child("mon");
//
//     print(needsSnapshot); // to debug and see if data is returned
//
//     List<Need> needs = [];
//
//     dynamic values = needsSnapshot.onValue;
//     values.forEach((key, values) {
//       needs.add(values);
//     });
//
//     return needs;
//   }
// }