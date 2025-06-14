import 'package:flutter/material.dart';

class PatientStatusCardApproved extends StatelessWidget {
  final String date;
  final String patientName;
  final String status;
  final Color statusColor;
  final Color statusColorText;
  final VoidCallback onTap;

  const PatientStatusCardApproved({
    super.key,
    required this.date,
    required this.patientName,
    required this.status,
    this.statusColor = const Color.fromARGB(255, 119, 184, 121),
    this.statusColorText = const Color.fromARGB(255, 0, 0, 0),
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Container(
      padding: const EdgeInsets.all(12),
      margin: EdgeInsets.symmetric(
        horizontal: screenWidth * 0.05,
        vertical: screenHeight * 0.01,
      ),
      width: double.infinity,
      height: screenHeight * 0.15, // Adjust height based on screen size
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey, width: 2),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Text(
                  " $patientName",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: screenWidth * 0.055,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              // Top Row: Date and Status
              /*Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                date,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: screenWidth * 0.055, // responsive font size
                ),
              ),*/
              Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 5,
                  horizontal: 12,
                ),
                decoration: BoxDecoration(
                  color: statusColor,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: Colors.grey),
                ),
                child: Text(
                  status,
                  style: TextStyle(
                    color: statusColorText,
                    fontWeight: FontWeight.bold,
                    fontSize: screenWidth * 0.035,
                  ),
                ),
              ),
            ],
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                date,
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: screenWidth * 0.04, // responsive font size
                ),
              ),

              // Bottom Row: Patient name and action button
              /*Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Text(
                  "Patient Name: $patientName",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: screenWidth * 0.04,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              ),*/
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(8),
                  shape: const CircleBorder(),
                  backgroundColor: Colors.grey.shade300,
                  elevation: 0,
                ),
                onPressed: onTap,
                child: const Icon(Icons.chevron_right, color: Colors.black),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
