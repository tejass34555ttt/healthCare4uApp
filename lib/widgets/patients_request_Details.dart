import 'package:flutter/material.dart';

class RequestPatientDetailCard extends StatelessWidget {
  final String name;
  final String age;
  final String contact1;
  final String contact2;
  final String address;
  final String executive;
  final String wardType;
  final String roomNo;
  final String admissionDate;
  final String admissionType;
  final String billAmount;
  final VoidCallback onDocumentTap;

  const RequestPatientDetailCard({
    super.key,
    required this.name,
    required this.age,
    required this.contact1,
    required this.contact2,
    required this.address,
    required this.executive,
    required this.wardType,
    required this.roomNo,
    required this.admissionDate,
    required this.admissionType,
    required this.billAmount,
    required this.onDocumentTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(16),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Patient Details:",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text("Name: $name"),
            Text("Age: $age"),
            Text("Contact 1: $contact1"),
            Text("Contact 2: $contact2"),
            Text("Address: $address"),
            Text("Executive Assigned: $executive"),
            const SizedBox(height: 16),

            const Text(
              "Admission Details:",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text("Ward Type: $wardType"),
            Text("Room No: $roomNo"),
            Text("Date Of Admission: $admissionDate"),
            Text("Type Of Admission: $admissionType"),
            Text("Bill Amount: $billAmount"),
            const SizedBox(height: 16),

            const Text(
              "Documents Uploaded:",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),

            Row(
              children: [
                const Icon(Icons.adobe, color: Colors.red),
                const SizedBox(width: 8),
                const Text("Hospital File Copy"),
                const Spacer(),
                IconButton(
                  icon: const Icon(Icons.picture_as_pdf),
                  onPressed: onDocumentTap,
                ),
              ],
            ),
            const SizedBox(height: 8),

            const Text(
              "Bed Assigning Status:",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Row(
              children: const [
                Icon(Icons.bed, color: Colors.green),
                SizedBox(width: 8),
                Text("Assigned to Room No. 101 in General Ward"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
