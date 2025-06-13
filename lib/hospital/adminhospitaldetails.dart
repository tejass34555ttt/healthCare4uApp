import 'package:flutter/material.dart';
import 'package:transfer_bedapp/widgets/hospitaldetails.dart';
//import 'hospital_detail_card.dart';

class HospitalDetailsPage extends StatelessWidget {
  const HospitalDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hospital Details"),
        backgroundColor: Colors.blue.shade700,
        centerTitle: true,
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 16.0),
            child: Icon(Icons.notifications_none),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: HospitalDetailCard(
          hospitalName: "Saikrupa Hospital",
          address: "Nashik, Maharashtra",
          contact1: "7020826505",
          contact2: "7020826505",
          totalBeds: 50,
          generalBeds: 35,
          icuBeds: 5,
          facilities: [
            "Laser Surgery",
            "Cancer Surgery",
            "Ear Surgery",
            "Allergy testing / Treatments",
            "Therapies",
            "Diagnostics",
          ],
          schemas: ["Ayushman Bharat"],
          offers: ["PMJAY"],
          enrollmentDate: "12/05/2024",
          totalReferred: "24",
          terms: "Accepted by the hospital",
        ),
      ),
    );
  }
}
