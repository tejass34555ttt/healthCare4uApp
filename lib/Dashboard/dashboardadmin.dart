import 'package:flutter/material.dart';
import 'package:transfer_bedapp/Bed/bed_available.dart';
import 'package:transfer_bedapp/Dashboard/admin_bed.dart';
import 'package:transfer_bedapp/Executive/adminexecutivedetails.dart';
import 'package:transfer_bedapp/Executive/addexecutive.dart';
import 'package:transfer_bedapp/Patients/TotalPatients.dart';
import 'package:transfer_bedapp/Patients/admitted_patientlist.dart';
import 'package:transfer_bedapp/Request/Pendingrequest.dart';
import 'package:transfer_bedapp/Request/patientsrequest.dart';
import 'package:transfer_bedapp/widgets/appbar.dart';

import 'package:transfer_bedapp/widgets/dashboardcard.dart';
import 'package:transfer_bedapp/widgets/drawerCustom.dart';

class DashboardScreenAdmin extends StatelessWidget {
  const DashboardScreenAdmin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const CustomDrawer(),
      appBar: CustomAppBar(title: "Dashboard"),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            // Blue circular button on top right
            Container(
              margin: const EdgeInsets.only(bottom: 16),
              child: CircleAvatar(
                radius: 28, // Size of the circle
                backgroundColor: Colors.blue,
                child: IconButton(
                  icon: const Icon(Icons.person_add, color: Colors.white),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => AddExecutiveScreen(),
                      ),
                    );
                  },
                ),
              ),
            ),

            // GridView wrapped in a fixed height Container
            GridView.count(
              crossAxisCount: 2,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              crossAxisSpacing: 16,
              mainAxisSpacing: 16,
              children: [
                DashboardCard(
                  title: 'Total Patients',
                  fontSize: 12,
                  count: 31,
                  imagePath: 'assets/images/bablu7.jpg',
                  backgroundColor: Color(0xFFFCF0F0),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Totalpatients()),
                    );
                  },
                ),
                DashboardCard(
                  title: 'Bed Available',
                  count: 21,
                  fontSize: 12,
                  imagePath: 'assets/images/click.jpg',
                  backgroundColor: Color(0xFFFCF0F0),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => BedsAvailablePage(),
                      ),
                    );
                  },
                ),
                DashboardCard(
                  title: 'Pending Requests',
                  count: 21,
                  fontSize: 12,
                  imagePath: 'assets/images/checklist.png',
                  backgroundColor: Color(0xFFFCF0F0),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => pendingrequest()),
                    );
                  },
                ),
                DashboardCard(
                  title: 'Admitted Patients',
                  fontSize: 12,
                  imagePath: 'assets/images/bablu5.jpg',
                  backgroundColor: Color(0xFFFCF0F0),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => admittedPatientlist(),
                      ),
                    );
                  },
                ),
                DashboardCard(
                  title: 'Executive Details',
                  fontSize: 12,
                  count: 31,
                  imagePath: 'assets/images/personal-data.png',
                  backgroundColor: Color(0xFFFCF0F0),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => executivedetailspage(),
                      ),
                    );
                  },
                ),
                DashboardCard(
                  title: 'Hospitals',
                  fontSize: 12,
                  count: 31,
                  imagePath: 'assets/images/hospital.jpg',
                  backgroundColor: Color(0xFFFCF0F0),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Totalpatients()),
                    );
                  },
                ),
                DashboardCard(
                  title: 'Diagnostic Services',
                  fontSize: 12,
                  count: 31,
                  imagePath: 'assets/images/diagnostic.png',
                  backgroundColor: Color(0xFFFCF0F0),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Totalpatients()),
                    );
                  },
                ),
                DashboardCard(
                  title: 'Ambulance Services',
                  fontSize: 12,
                  count: 31,
                  imagePath: 'assets/images/ambu1.png',
                  backgroundColor: Color(0xFFFCF0F0),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Totalpatients()),
                    );
                  },
                ),
                DashboardCard(
                  title: 'Home Medical Services',
                  fontSize: 12,
                  count: 31,
                  imagePath: 'assets/images/HomeMedical.png',
                  backgroundColor: Color(0xFFFCF0F0),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Totalpatients()),
                    );
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
