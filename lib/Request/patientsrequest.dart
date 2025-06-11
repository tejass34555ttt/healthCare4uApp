import 'package:flutter/material.dart';
import 'package:transfer_bedapp/Request/adminAssignment.dart';
import 'package:transfer_bedapp/widgets/CardTotalPatients.dart';
import 'package:transfer_bedapp/widgets/CustomSearch.dart';

class Patientsrequest extends StatefulWidget {
  const Patientsrequest({super.key});

  @override
  State<Patientsrequest> createState() => _PatientsrequestState();
}

class _PatientsrequestState extends State<Patientsrequest> {
  final TextEditingController _searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /* appBar: AppBar(
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
      ),*/
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
              status: "Wating",
              statusColor: const Color.fromARGB(255, 195, 176, 129),
              statusColorText: const Color.fromARGB(255, 138, 118, 70),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AdminAssingingExecutive(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
