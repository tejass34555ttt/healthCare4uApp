// widgets/patient_details_card.dart
import 'package:flutter/material.dart';

class PatientDetailsCard extends StatelessWidget {
  final String name;
  final String age;
  final String gender;
  final String contact;
  final String address;

  const PatientDetailsCard({
    super.key,
    required this.name,
    required this.age,
    required this.gender,
    required this.contact,
    required this.address,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Patient Details:",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          const SizedBox(height: 8),
          Text("Name: $name"),
          Text("Age: $age"),
          Text("Gender: $gender"),
          Text("Contact: $contact"),
          Text("Address: $address"),
        ],
      ),
    );
  }
}
