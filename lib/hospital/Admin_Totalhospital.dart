import 'package:flutter/material.dart';
import 'package:transfer_bedapp/Patients/Patienthistory.dart';
import 'package:transfer_bedapp/Patients/patientdetailsshow.dart';
import 'package:transfer_bedapp/Request/Patient_assignexecutive.dart';
import 'package:transfer_bedapp/hospital/adminhospitaldetails.dart';
import 'package:transfer_bedapp/widgets/CardTotalPatients.dart';
import 'package:transfer_bedapp/widgets/CustomSearch.dart';
import 'package:transfer_bedapp/widgets/appbar.dart';
import 'package:transfer_bedapp/widgets/custom_hospitalcard.dart';
import 'package:transfer_bedapp/widgets/drawerCustom.dart';

class totalHospitallist extends StatefulWidget {
  const totalHospitallist({super.key});

  @override
  State<totalHospitallist> createState() => _totalHospitallistState();
}

class _totalHospitallistState extends State<totalHospitallist> {
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
      appBar: CustomAppBar(title: "Hospitals"),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(right: 50, left: 50, top: 50),
              child: SearchBarWidget(
                controller: _searchController,
                hintText: 'Search Hospital...',
                onChanged: (query) {
                  print("User typed: $query");
                  // Add filtering logic here
                },
              ),
            ),

            HospitalList(
              location: 'location',
              hospitalName: 'hospitalName',
              status: 'Bed Available',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HospitalDetailsPage(),
                  ),
                );
              },
            ),

            HospitalList(
              location: 'location',
              hospitalName: 'hospitalName',
              status: 'Bed Available',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HospitalDetailsPage(),
                  ),
                );
              },
            ),

            HospitalList(
              location: 'location',
              hospitalName: 'hospitalName',
              status: 'Bed Available',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HospitalDetailsPage(),
                  ),
                );
              },
            ),

            HospitalList(
              location: 'location',
              hospitalName: 'hospitalName',
              status: 'Bed Available',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HospitalDetailsPage(),
                  ),
                );
              },
            ),

            HospitalList(
              location: 'location',
              hospitalName: 'hospitalName',
              status: 'Bed Available',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HospitalDetailsPage(),
                  ),
                );
              },
            ),

            HospitalList(
              location: 'location',
              hospitalName: 'hospitalName',
              status: 'Bed Available',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HospitalDetailsPage(),
                  ),
                );
              },
            ),

            //Cards
          ],
        ),
      ),
    );
  }
}
