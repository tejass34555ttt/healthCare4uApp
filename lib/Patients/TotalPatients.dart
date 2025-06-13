import 'package:flutter/material.dart';
import 'package:transfer_bedapp/Patients/patientdetailsshow.dart';
import 'package:transfer_bedapp/Request/Patient_assignexecutive.dart';
import 'package:transfer_bedapp/widgets/CardTotalPatients.dart';
import 'package:transfer_bedapp/widgets/CustomSearch.dart';
import 'package:transfer_bedapp/widgets/appbar.dart';
import 'package:transfer_bedapp/widgets/drawerCustom.dart';

class Totalpatients extends StatefulWidget {
  const Totalpatients({super.key});

  @override
  State<Totalpatients> createState() => _TotalpatientsState();
}

class _TotalpatientsState extends State<Totalpatients> {
  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const CustomDrawer(),
      appBar: CustomAppBar(title: "Total Patients"),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(right: 50, left: 50, top: 30),
              child: SearchBarWidget(
                controller: _searchController,
                hintText: 'Search Patient Name...',
                onChanged: (query) {
                  print("User typed: $query");
                  // Add filtering logic here
                },
              ),
            ),
            SizedBox(height: 20),

            //Cards
            PatientStatusCardApproved(
              date: "Wed, 16 Dec",
              patientName: "John Doe",
              status: "Approved",
              statusColor: const Color.fromARGB(255, 119, 184, 121),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PatientDetailsPage()),
                );
              },
            ),

            //card2
            PatientStatusCardApproved(
              date: "Wed, 16 Dec",
              patientName: "Smith",
              status: "Pending",
              statusColor: const Color.fromARGB(244, 224, 231, 40),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Patient_assignexecutive(),
                  ),
                );
              },
            ),

            //card3
            PatientStatusCardApproved(
              date: "Tue, 15 Dec",
              patientName: "David",
              status: "Approved",
              statusColor: const Color.fromARGB(255, 119, 184, 121),
              onTap: () {},
            ),

            ///card4
            PatientStatusCardApproved(
              date: "Thur, 17 Dec",
              patientName: "Roy",
              status: "Approved",
              statusColor: const Color.fromARGB(255, 119, 184, 121),
              onTap: () {},
            ),

            PatientStatusCardApproved(
              date: "Wed, 16 Dec",
              patientName: "Smith",
              status: "Pending",
              statusColor: const Color.fromARGB(244, 224, 231, 40),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Patient_assignexecutive(),
                  ),
                );
              },
            ),

            PatientStatusCardApproved(
              date: "Tue, 15 Dec",
              patientName: "David",
              status: "Approved",
              statusColor: const Color.fromARGB(255, 119, 184, 121),
              onTap: () {},
            ),

            PatientStatusCardApproved(
              date: "Tue, 15 Dec",
              patientName: "David",
              status: "Approved",
              statusColor: const Color.fromARGB(255, 119, 184, 121),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
