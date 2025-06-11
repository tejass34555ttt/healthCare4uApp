import 'package:flutter/material.dart';
import 'package:transfer_bedapp/Bed/bed_available.dart';
import 'package:transfer_bedapp/Patients/TotalPatients.dart';
import 'package:transfer_bedapp/Request/patientsrequest.dart';
import 'package:transfer_bedapp/widgets/appbar.dart';

import 'package:transfer_bedapp/widgets/dashboardcard.dart';
import 'package:transfer_bedapp/widgets/drawerCustom.dart';

class DashboardScreenAdmin extends StatelessWidget {
  const DashboardScreenAdmin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: const CustomAppBar(title: 'Dashboard'),
      drawer: const CustomDrawer(),
      appBar: CustomAppBar(title: "Dashboard"),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.count(
          crossAxisCount: 2,
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
                  MaterialPageRoute(builder: (context) => BedsAvailablePage()),
                );
              },
            ),
            DashboardCard(
              title: 'Requests',
              count: 21,
              fontSize: 12,
              imagePath: 'assets/images/bablu1.jpg',

              backgroundColor: Color(0xFFFCF0F0),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Patientsrequest()),
                );
              },
            ),
            /*DashboardCard(
              title: ' Documents',

              fontSize: 12,
              imagePath: 'assets/images/bablu3.jpg',
              backgroundColor: Color(0xFFFCF0F0),
              onTap: () {},
            ),*/
            /* DashboardCard(
              title: 'Bills',

              fontSize: 12,
              imagePath: 'assets/images/bablu4.jpg',
              backgroundColor: Color(0xFFFCF0F0),
              onTap: () {},
            ),*/
            DashboardCard(
              title: 'Patients Details',

              fontSize: 12,
              imagePath: 'assets/images/bablu5.jpg',
              backgroundColor: Color(0xFFFCF0F0),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
