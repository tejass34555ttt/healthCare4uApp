import 'package:flutter/material.dart';
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
      appBar: CustomAppBar(title: "Total Patients"),
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
              status: "Approved",
              statusColor: const Color.fromARGB(255, 119, 184, 121),
              onTap: () {},
            ),

            //card2
            PatientStatusCardApproved(
              date: "Wed, 16 Dec",
              patientName: "Smith",
              status: "Approved",
              statusColor: const Color.fromARGB(255, 119, 184, 121),
              onTap: () {},
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
          ],
        ),
      ),
    );
  }
}
