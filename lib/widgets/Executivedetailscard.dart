import 'package:flutter/material.dart';

class Executivestatuscard extends StatelessWidget {
  final String date;
  final String patientName;
  final String status;
  final Color statusColor;
  final VoidCallback onTap;
  final Icon executiveIcon; // New field for the icon

  const Executivestatuscard({
    super.key,
    required this.date,
    required this.patientName,
    required this.status,
    required this.statusColor,
    required this.onTap,
    required this.executiveIcon, // Add to constructor
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: ListTile(
        onTap: onTap,
        leading: executiveIcon, //  Show the icon instead of name
        title: Text(date), // Display name as date
        subtitle: Text("Status: $status"),
        trailing: CircleAvatar(backgroundColor: statusColor, radius: 8),
      ),
    );
  }
}
