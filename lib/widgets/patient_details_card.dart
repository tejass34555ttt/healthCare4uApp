import 'package:flutter/material.dart';

class PatientDetailsCard extends StatelessWidget {
  final String name;
  final String age;
  final String gender;
  final String contact1;
  final String contact2;
  final String address;
  final String executive;

  final String wardType;
  final String roomNo;
  final String dateOfAdmission;
  final String typeOfAdmission;
  final String billAmount;

  final List<String> documentNames;

  const PatientDetailsCard({
    super.key,
    required this.name,
    required this.age,
    required this.gender,
    required this.contact1,
    required this.contact2,
    required this.address,
    required this.executive,
    required this.wardType,
    required this.roomNo,
    required this.dateOfAdmission,
    required this.typeOfAdmission,
    required this.billAmount,
    required this.documentNames,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      margin: const EdgeInsets.symmetric(vertical: 12),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black26),
        borderRadius: BorderRadius.circular(16),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Patient Details:",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          const SizedBox(height: 10),
          Text("Name : $name"),
          Text("Age: $age"),
          Text("Contact 1: $contact1"),
          Text("Contact 2: $contact2"),
          Text("Address: $address"),
          Text("Executive Assigned: $executive"),
          const SizedBox(height: 16),

          const Text(
            "Admission Details:",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          const SizedBox(height: 8),
          Text("Ward Type: $wardType"),
          Text("Room No: $roomNo"),
          Text("Date Of Admission: $dateOfAdmission"),
          Text("Type Of Admission: $typeOfAdmission"),
          Text("Bill Amount: $billAmount"),
          const SizedBox(height: 16),

          const Text(
            "Documents Uploaded:",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          const SizedBox(height: 8),
          ...documentNames.map(
            (doc) => Padding(
              padding: const EdgeInsets.symmetric(vertical: 4),
              child: Row(
                children: [
                  const Icon(Icons.picture_as_pdf, color: Colors.red),
                  const SizedBox(width: 8),
                  Expanded(child: Text(doc)),
                  IconButton(
                    icon: const Icon(Icons.visibility),
                    onPressed: () {
                      // You can open a PDF viewer or show file preview here
                      debugPrint('Previewing $doc');
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
