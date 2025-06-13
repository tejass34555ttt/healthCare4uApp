import 'package:flutter/material.dart';
import 'package:timeline_tile/timeline_tile.dart';

class CustomTimelineTile extends StatelessWidget {
  final String date;
  final String time;
  final String title;
  final Color color;
  final bool isFirst;
  final bool isLast;

  const CustomTimelineTile({
    super.key,
    required this.date,
    required this.time,
    required this.title,
    required this.color,
    this.isFirst = false,
    this.isLast = false,
  });

  @override
  Widget build(BuildContext context) {
    return TimelineTile(
      alignment: TimelineAlign.start,
      isFirst: isFirst,
      isLast: isLast,
      indicatorStyle: IndicatorStyle(
        width: 24,
        height: 24,
        indicator: CircleAvatar(
          backgroundColor: color,
          child: const Icon(Icons.check, size: 14, color: Colors.white),
        ),
      ),
      beforeLineStyle: LineStyle(color: color, thickness: 3),
      afterLineStyle: LineStyle(color: color, thickness: 3),
      endChild: Padding(
        padding: const EdgeInsets.only(left: 8.0, bottom: 20),
        child: Row(
          children: [
            SizedBox(
              width: 70,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    date,
                    style: TextStyle(color: color, fontWeight: FontWeight.bold),
                  ),
                  Text(time, style: const TextStyle(fontSize: 12)),
                ],
              ),
            ),
            const SizedBox(width: 20),
            Expanded(
              child: Text(
                title,
                style: const TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
