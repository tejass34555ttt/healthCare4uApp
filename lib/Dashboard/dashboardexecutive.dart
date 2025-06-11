import 'package:flutter/material.dart';
import 'package:transfer_bedapp/Bed/bed_available.dart';
import 'package:transfer_bedapp/Patients/TotalPatients.dart';
import 'package:transfer_bedapp/widgets/CardTotalPatients.dart';
import 'package:transfer_bedapp/widgets/appbar.dart';
import 'package:transfer_bedapp/Request/assignexcutive.dart';

import 'package:transfer_bedapp/widgets/dashboardcard.dart';
import 'package:transfer_bedapp/widgets/drawerCustom.dart';

class Dashboardexective extends StatelessWidget {
  const Dashboardexective({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*appBar: const CustomAppBar(title: 'Dashboard'),*/
      drawer: const CustomDrawer(),
      appBar: CustomAppBar(title: "Dashboard"),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // You can add other widgets here above the grid if needed
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.3,
              child: GridView.count(
                crossAxisCount: 3,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                physics: const AlwaysScrollableScrollPhysics(),
                children: [
                  DashboardCard(
                    title: 'Total Patients',
                    fontSize: 9,
                    count: 31,
                    imagePath: 'assets/images/bablu7.jpg',
                    backgroundColor: Color(0xFFFCF0F0),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Totalpatients(),
                        ),
                      );
                    },
                  ),
                  DashboardCard(
                    title: 'Bed Available',
                    count: 21,
                    fontSize: 9,
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
                    title: 'Available executives',
                    count: 21,
                    fontSize: 9,
                    imagePath: 'assets/images/bablu3.jpg',
                    backgroundColor: Color(0xFFFCF0F0),
                    onTap: () {},
                  ),
                ],
              ),
            ),

            Column(
              children: [
                Text(
                  "Request Deatils",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                //Cards
                PatientStatusCardApproved(
                  date: "Wed, 16 Dec",
                  patientName: "John Doe",
                  status: "Wating",
                  statusColor: const Color.fromARGB(255, 231, 204, 137),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => AssignExecutivePage(),
                      ),
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
