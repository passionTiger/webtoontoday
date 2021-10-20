// //요일별 넓이커스텀 탭 위젯
// class TabList extends StatelessWidget {
//   final String day;
//   final double? width;
//
//   TabList({required this.day, this.width = 15.0});
//
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return Container(
//       width: width,
//       child: Tab(text: day),
//     );
//   }
// }

// class WebToonTitle{
//
//   WebToonTitle({
//     required this.day
//   });
//
//   final String day;
//   DatabaseReference db = FirebaseDatabase.instance.reference().child("토요일");
//   var values;
//
//   void a(){
//     db.once().then((DataSnapshot snapshot){
//       this.values = snapshot.value;
//     });
//   }
//   return this.values;
//
// }

// makeTitleList(String day) async{
//   await Firebase.initializeApp();
//   var values;
//   var result;
//   DatabaseReference db = FirebaseDatabase.instance.reference().child(day);
//   result = await db.once().then((DataSnapshot snapshot){
//     values = snapshot.value;
//     return values;
//   });
//   print(result);
//   return values;
// }
//
//
// printFirebase (){
//   final databaseRef = FirebaseDatabase.instance.reference().child('토요일');
//   List list = [];
//   databaseRef.once().then((DataSnapshot snapshot) {
//     List values = snapshot.value;
//     values.forEach((v) {
//       list.add(v);
//     });
//   });
//   Future.delayed(Duration(seconds: 10));
//   return list;
// }
//
// class WebToonGrid extends StatelessWidget {
//   const WebToonGrid({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return MediaQuery.removePadding(
//       context: context,
//       removeTop: true,
//       child: GridView.builder(
//         //shrinkWrap: true,
//         //physics: NeverScrollableScrollPhysics(),
//           itemCount: 30,
//           gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//             crossAxisCount: 3,
//             childAspectRatio: MediaQuery.of(context).size.width /
//                 (MediaQuery.of(context).size.height / 1.3),
//           ),
//           itemBuilder: (BuildContext context, int index) {
//             return Container(
//                 child: Container(
//                   color: Colors.grey,
//                   alignment: Alignment.center,
//                   child: Text('Item $index'),
//                 ),
//                 decoration: BoxDecoration(
//                   color: Colors.grey,
//                   border: Border.all(
//                     width: 0.3,
//                     color: Colors.black54,
//                   ),
//                 ));
//           }),
//     );
//   }
// }

