import 'package:flutter/material.dart';
import 'package:transfer_bedapp/Patients/Patienthistory.dart';
import 'package:transfer_bedapp/Patients/patientdetailsshow.dart';
import 'package:transfer_bedapp/Request/Patient_assignexecutive.dart';
import 'package:transfer_bedapp/widgets/CardTotalPatients.dart';
import 'package:transfer_bedapp/widgets/CustomSearch.dart';
import 'package:transfer_bedapp/widgets/appbar.dart';
import 'package:transfer_bedapp/widgets/drawerCustom.dart';

class admittedPatientlist extends StatefulWidget {
  const admittedPatientlist({super.key});

  @override
  State<admittedPatientlist> createState() => _admittedPatientlistState();
}

class _admittedPatientlistState extends State<admittedPatientlist> {
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
      appBar: CustomAppBar(title: "Admitted Patients"),
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
              status: "Admitted",
              statusColor: const Color.fromARGB(223, 98, 220, 41),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Patienthistorypage()),
                );
              },
            ),

            //card2
            PatientStatusCardApproved(
              date: "Wed, 16 Dec",
              patientName: "Smith",
              status: "Admitted",
              statusColor: const Color.fromARGB(223, 98, 220, 41),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Patienthistorypage()),
                );
              },
            ),

            //card3
            PatientStatusCardApproved(
              date: "Tue, 15 Dec",
              patientName: "David",
              status: "Admitted",
              statusColor: const Color.fromARGB(223, 98, 220, 41),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Patienthistorypage()),
                );
              },
            ),

            ///card4
            PatientStatusCardApproved(
              date: "Thur, 17 Dec",
              patientName: "Roy",
              status: "Admitted",
              statusColor: const Color.fromARGB(223, 98, 220, 41),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Patienthistorypage()),
                );
              },
            ),

            ///card5
            PatientStatusCardApproved(
              date: "Thur, 18 Dec",
              patientName: "abc",
              status: "Admitted",
              statusColor: const Color.fromARGB(223, 98, 220, 41),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Patienthistorypage()),
                );
              },
            ),

            ///card6
            PatientStatusCardApproved(
              date: "Thur, 19 Dec",
              patientName: "xyz",
              status: "Admitted",
              statusColor: const Color.fromARGB(223, 98, 220, 41),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Patienthistorypage()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
