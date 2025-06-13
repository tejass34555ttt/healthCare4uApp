import 'package:flutter/material.dart';
import 'package:transfer_bedapp/Patients/patientdetailsshow.dart';
import 'package:transfer_bedapp/Request/Patient_assignexecutive.dart';
import 'package:transfer_bedapp/widgets/CardTotalPatients.dart';
import 'package:transfer_bedapp/widgets/CustomSearch.dart';
import 'package:transfer_bedapp/widgets/appbar.dart';
import 'package:transfer_bedapp/widgets/drawerCustom.dart';
import 'package:transfer_bedapp/widgets/totalexecutivecard.dart';

class totalexecutivepage extends StatefulWidget {
  const totalexecutivepage({super.key});

  @override
  State<totalexecutivepage> createState() => _totalexecutivepageState();
}

class _totalexecutivepageState extends State<totalexecutivepage> {
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
            SizedBox(height: 15),

            ExecutiveStatusCard(
              executiveName: 'executiveName',
              status: 'Available',
              statusColor: const Color.fromARGB(255, 119, 184, 121),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PatientDetailsPage()),
                );
              },
            ),

            ExecutiveStatusCard(
              executiveName: 'executiveName',
              status: 'Available',
              statusColor: const Color.fromARGB(255, 119, 184, 121),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PatientDetailsPage()),
                );
              },
            ),

            ExecutiveStatusCard(
              executiveName: 'executiveName',
              status: 'Available',
              statusColor: const Color.fromARGB(255, 119, 184, 121),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PatientDetailsPage()),
                );
              },
            ),

            ExecutiveStatusCard(
              executiveName: 'executiveName',
              status: 'Available',
              statusColor: const Color.fromARGB(255, 119, 184, 121),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PatientDetailsPage()),
                );
              },
            ),

            ExecutiveStatusCard(
              executiveName: 'executiveName',
              status: 'Available',
              statusColor: const Color.fromARGB(255, 119, 184, 121),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PatientDetailsPage()),
                );
              },
            ),

            ExecutiveStatusCard(
              executiveName: 'executiveName',
              status: 'Available',
              statusColor: const Color.fromARGB(255, 119, 184, 121),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PatientDetailsPage()),
                );
              },
            ),
            ExecutiveStatusCard(
              executiveName: 'executiveName',
              status: 'Available',
              statusColor: const Color.fromARGB(255, 119, 184, 121),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PatientDetailsPage()),
                );
              },
            ),

            //card2
          ],
        ),
      ),
    );
  }
}
