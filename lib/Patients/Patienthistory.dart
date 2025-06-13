import 'package:flutter/material.dart';
import 'package:transfer_bedapp/widgets/appbar.dart';
import 'package:transfer_bedapp/widgets/drawerCustom.dart';
import 'package:transfer_bedapp/widgets/patients_request_Details.dart';

class Patienthistorypage extends StatefulWidget {
  const Patienthistorypage({super.key});

  @override
  State<Patienthistorypage> createState() => _PatienthistorypageState();
}

class _PatienthistorypageState extends State<Patienthistorypage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const CustomDrawer(),
      appBar: CustomAppBar(title: "Dashboard"),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            RequestPatientDetailCard(
              name: 'Isha Jagdale',
              age: '23',
              contact1: '9876543210',
              contact2: '9123456780',
              address: 'Nashik, Maharashtra',
              executive: 'Executive A',
              wardType: 'General',
              roomNo: '101',
              admissionDate: '10 June 2025',
              admissionType: 'Emergency',
              billAmount: '₹12,500',

              onDocumentTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Opening Hospital File PDF...')),
                );
              },
            ),
            /*const Text(
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
            ),*/

            // Add more widgets here if needed
          ],
        ),
      ),
    );
  }
}
