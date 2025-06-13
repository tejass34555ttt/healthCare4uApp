// pages/request_details_page.dart
import 'package:flutter/material.dart';
import '../widgets/timeline_tile.dart';
import '../widgets/patient_details_card.dart';

class RequestDetailsPage extends StatelessWidget {
  const RequestDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Request Details"),
        backgroundColor: Colors.blueAccent,
        actions: const [Icon(Icons.notifications_none), SizedBox(width: 16)],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            // Timeline Steps
            TimelineTile(
              title: "Request Sent Successfully",
              time: "1:45 PM",
              date: "Dec, 23",
              iconColor: Colors.blue,
              icon: Icons.check,
            ),
            TimelineTile(
              title: "Executive Assigned",
              time: "1:45 PM",
              date: "Dec, 23",
              iconColor: Colors.yellow,
              icon: Icons.check,
            ),
            TimelineTile(
              title: "Hospitals Contacted",
              time: "1:45 PM",
              date: "Dec, 23",
              iconColor: Colors.yellow,
              icon: Icons.check,
            ),
            TimelineTile(
              title: "Hospital Bed Confirmed",
              time: "1:45 PM",
              date: "Dec, 23",
              iconColor: Colors.green,
              icon: Icons.check,
            ),

            SizedBox(height: 24),

            // Patient Details Section
            /*PatientDetailsCard(
              name: "S V Shinde",
              age: "23yrs",
              gender: "Female",
              contact: "7020826505",
              address: "Nashik Road, Jail Road",
            ),*/
          ],
        ),
      ),
    );
  }
}
