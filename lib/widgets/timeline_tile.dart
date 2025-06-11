import 'package:flutter/material.dart';

class TimelineTile extends StatelessWidget {
  final String title;
  final String time;
  final String date;
  final Color iconColor;
  final IconData icon;

  const TimelineTile({
    super.key,
    required this.title,
    required this.time,
    required this.date,
    required this.iconColor,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: iconColor,
                shape: BoxShape.circle,
              ),
              padding: const EdgeInsets.all(6),
              child: Icon(icon, color: Colors.white, size: 16),
            ),
            Container(width: 2, height: 50, color: Colors.grey[300]),
          ],
        ),
        const SizedBox(width: 12),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              date,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ), // <-- use date here
            Text(time, style: const TextStyle(color: Colors.grey)),
            const SizedBox(height: 4),
            Text(
              title,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ],
    );
  }
}
