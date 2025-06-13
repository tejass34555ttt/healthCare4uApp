import 'package:flutter/material.dart';

class HospitalDetailCard extends StatelessWidget {
  final String hospitalName;
  final String address;
  final String contact1;
  final String contact2;
  final int totalBeds;
  final int generalBeds;
  final int icuBeds;
  final List<String> facilities;
  final List<String> schemas;
  final List<String> offers;
  final String enrollmentDate;
  final String totalReferred;
  final String terms;

  const HospitalDetailCard({
    super.key,
    required this.hospitalName,
    required this.address,
    required this.contact1,
    required this.contact2,
    required this.totalBeds,
    required this.generalBeds,
    required this.icuBeds,
    required this.facilities,
    required this.schemas,
    required this.offers,
    required this.enrollmentDate,
    required this.totalReferred,
    required this.terms,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      margin: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black26),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Hospital Details:",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          const SizedBox(height: 8),
          Text("Hospital Name: $hospitalName"),
          Text("Add: $address"),
          const SizedBox(height: 8),
          const Text(
            "Hospital Details:",
            style: TextStyle(fontWeight: FontWeight.w500),
          ),
          Text("Contact1: $contact1"),
          Text("Contact2: $contact2"),
          Text("Total beds: $totalBeds"),
          Text("General: $generalBeds"),
          Text("ICU: $icuBeds"),

          const SizedBox(height: 8),
          const Text(
            "Hospital Facilities:",
            style: TextStyle(fontWeight: FontWeight.w500),
          ),
          ...facilities.map((f) => Text("• $f")).toList(),

          const SizedBox(height: 8),
          const Text(
            "Available Schemas:",
            style: TextStyle(fontWeight: FontWeight.w500),
          ),
          ...schemas.map((s) => Text("- $s")).toList(),

          const SizedBox(height: 8),
          const Text(
            "Available Offers:",
            style: TextStyle(fontWeight: FontWeight.w500),
          ),
          ...offers.map((o) => Text("- $o")).toList(),

          const SizedBox(height: 16),
          const Text(
            "Enrolment Details:",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Text("Date Of Enrolment: $enrollmentDate"),
          Text("Total Preferred Patients To The Hospital: $totalReferred"),
          const SizedBox(height: 8),
          Row(
            children: [
              const Icon(Icons.circle, size: 8, color: Colors.red),
              const SizedBox(width: 6),
              Expanded(child: Text("Terms and Conditions: $terms")),
            ],
          ),
        ],
      ),
    );
  }
}
