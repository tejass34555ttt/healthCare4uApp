import 'package:flutter/material.dart';
import 'package:transfer_bedapp/Patients/patientdetailsshow.dart';
import 'package:transfer_bedapp/Request/Patient_assignexecutive.dart';
import 'package:transfer_bedapp/widgets/CardTotalPatients.dart';
import 'package:transfer_bedapp/widgets/CustomSearch.dart';
import 'package:transfer_bedapp/widgets/appbar.dart';
import 'package:transfer_bedapp/widgets/drawerCustom.dart';

class pendingrequest extends StatefulWidget {
  const pendingrequest({super.key});

  @override
  State<pendingrequest> createState() => _pendingrequestState();
}

class _pendingrequestState extends State<pendingrequest> {
  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*appBar: AppBar(
        title: const Text("total Patients"),
        centerTitle: true,
        backgroundColor: Colors.blue.shade700,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(
              context,
            ); // This will navigate back to the previous screen
          },
        ),

        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 16.0),
            child: Icon(Icons.notifications_none),
          ),
        ],
      ),*/
      drawer: const CustomDrawer(),
      appBar: CustomAppBar(title: "Pending Requests"),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(right: 50, left: 50, top: 50),
              child: SearchBarWidget(
                controller: _searchController,
                hintText: 'Search Patient Name...',
                onChanged: (query) {
                  print("User typed: $query");
                  // Add filtering logic here
                },
              ),
            ),

            //Cards
            PatientStatusCardApproved(
              date: "Wed, 16 Dec",
              patientName: "John Doe",
              status: "pending",
              statusColor: const Color.fromARGB(203, 233, 202, 61),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Patient_assignexecutive(),
                  ),
                );
              },
            ),

            //card2
            PatientStatusCardApproved(
              date: "Wed, 16 Dec",
              patientName: "Smith",
              status: "pending",
              statusColor: const Color.fromARGB(203, 233, 202, 61),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PatientDetailsPage()),
                );
              },
            ),

            //card3
            PatientStatusCardApproved(
              date: "Tue, 15 Dec",
              patientName: "David",
              status: "pending",
              statusColor: const Color.fromARGB(203, 233, 202, 61),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PatientDetailsPage()),
                );
              },
            ),

            ///card4
            PatientStatusCardApproved(
              date: "Thur, 17 Dec",
              patientName: "Roy",
              status: "pending",
              statusColor: const Color.fromARGB(203, 233, 202, 61),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PatientDetailsPage()),
                );
              },
            ),

            ///card5
            PatientStatusCardApproved(
              date: "Thur, 18 Dec",
              patientName: "abc",
              status: "pending",
              statusColor: const Color.fromARGB(203, 233, 202, 61),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PatientDetailsPage()),
                );
              },
            ),

            ///card6
            PatientStatusCardApproved(
              date: "Thur, 19 Dec",
              patientName: "xyz",
              status: "pending",
              statusColor: const Color.fromARGB(203, 233, 202, 61),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PatientDetailsPage()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
