import 'package:flutter/material.dart';
import 'package:timeline_tile/timeline_tile.dart';

class Tracking extends StatelessWidget {
  final Widget endChild;
  final bool isFirst;
  final bool isLast;

  Tracking({required this.endChild, required this.isFirst, required this.isLast});

  @override
  Widget build(BuildContext context) {
    return TimelineTile(
      alignment: TimelineAlign.manual,
      lineXY: 0.1,
      isFirst: isFirst,
      isLast: isLast,
      indicatorStyle: IndicatorStyle(
        width: 20,
        color: Color.fromRGBO(97, 163, 186, 1),
        padding: EdgeInsets.all(6),
      ),
      beforeLineStyle: LineStyle(
        color: Color.fromRGBO(97, 163, 186, 1),
        thickness: 6,
      ),
      afterLineStyle: LineStyle(
        color: Color.fromRGBO(97, 163, 186, 1),
        thickness: 6,
      ),
      endChild: Padding(
        padding: const EdgeInsets.all(8.0),
        child: endChild,
      ),
      // startChild: Container(
      //   constraints: BoxConstraints(
      //     minHeight: 120,
      //   ),
      //   //color: Colors.amberAccent,
      // ),
    );
  }
}
