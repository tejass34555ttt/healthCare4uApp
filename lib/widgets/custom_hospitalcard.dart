import 'package:flutter/material.dart';

class HospitalList extends StatelessWidget {
  final String location;
  final String hospitalName;
  final String status;
  final Color statusColor;
  final Color statusColorText;
  final VoidCallback onTap;

  const HospitalList({
    super.key,
    required this.location,
    required this.hospitalName,
    required this.status,
    this.statusColor = const Color.fromARGB(255, 119, 184, 121),
    this.statusColorText = const Color.fromARGB(255, 0, 0, 0),
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      margin: const EdgeInsets.all(20),
      width: double.infinity,
      height: 120,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey, width: 2),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Hospital Name and Status
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                hospitalName,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
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
                  ),
                ),
              ),
            ],
          ),

          // Location and Button
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Location: $location",
                style: const TextStyle(fontWeight: FontWeight.w500),
              ),
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
