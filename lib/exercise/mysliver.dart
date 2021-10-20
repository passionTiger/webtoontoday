import 'package:flutter/material.dart';

class SliverFixedHeader extends SliverPersistentHeaderDelegate {
  final double maxHeight;
  final double minHeight;
  final Widget child;

  SliverFixedHeader({
    required this.maxHeight,
    required this.minHeight,
    required this.child,
  });

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    // TODO: implement build
    return SizedBox.expand(
      child: child,
    );
  }

  @override
  // TODO: implement maxExtent
  double get maxExtent => this.maxHeight;

  @override
  // TODO: implement minExtent
  double get minExtent => this.minHeight;

  @override
  bool shouldRebuild(
    SliverFixedHeader oldDelegate,
  ) {
    // TODO: implement shouldRebuild
    return oldDelegate.maxHeight != this.maxHeight ||
        oldDelegate.minHeight != this.minHeight ||
        oldDelegate.child != this.child;
  }
}

renderHeader() {
  return SliverPersistentHeader(
    pinned: true,
    delegate: SliverFixedHeader(
        maxHeight: 45.0,
        minHeight: 45.0,
        child: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              DayButton(day: "월"),
              DayButton(day: "화"),
              DayButton(day: "수"),
              DayButton(day: "목"),
              DayButton(day: "금"),
              DayButton(day: "토"),
              DayButton(day: "일"),
              DayButtonLong(day: "열흘"),
              DayButtonLong(day: "완결"),
            ],
          ),
          color: Colors.white,
        )),
  );
}

renderSliverListAd() {
  return SliverList(
      delegate: SliverChildListDelegate([
    Container(
      color: Colors.grey,
      height: 170.0,
    )
  ]));
}

renderSliverGrid() {
  return SliverGrid(
    delegate: SliverChildBuilderDelegate((context, index) {
      return Container(
        decoration: BoxDecoration(
          color: Colors.grey,
          border: Border.all(
            width: 0.3,
            color: Colors.grey.shade400,
          ),
        ),
        height: 80.0,
      );
    }),
    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
  );
}

class DayButton extends StatelessWidget {
  final String day;

  DayButton({
    required this.day
  });
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        height: 45.0,
        width: 17.0,
        child: TextButton(
          onPressed: () {
            // Respond to button press
          },
          child: Text(
            day,
            style: TextStyle(
              fontSize: 15.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}

class DayButtonLong extends StatelessWidget {
  final String day;

  DayButtonLong({
    required this.day
  });
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        height: 45.0,
        width: 35.0,
        child: TextButton(
          onPressed: () {
            // Respond to button press
          },
          child: Text(
            day,
            style: TextStyle(
              fontSize: 14.5,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
