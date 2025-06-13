import 'package:flutter/material.dart';
import 'package:transfer_bedapp/widgets/appbar.dart';
import 'package:transfer_bedapp/widgets/dashboardcard.dart';
import 'package:transfer_bedapp/widgets/drawerCustom.dart';

class DashboardScreenHospital extends StatefulWidget {
  const DashboardScreenHospital({super.key});

  @override
  State<DashboardScreenHospital> createState() =>
      _DashboardScreenHospitalState();
}

class _DashboardScreenHospitalState extends State<DashboardScreenHospital> {
  int availableBeds = 50;

  void increaseBeds() {
    setState(() {
      availableBeds++;
    });
  }

  void decreaseBeds() {
    setState(() {
      if (availableBeds > 0) {
        availableBeds--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const CustomDrawer(),
      appBar: CustomAppBar(title: "Home"),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
          children: [
            DashboardCard(
              title: 'Bed Available',
              fontSize: 12,
              count: 31,

              imagePath: 'assets/images/click.jpg',
              backgroundColor: const Color(0xFFFCF0F0),
              onTap: () {},
            ),

            DashboardCard(
              title: 'Available beds in ICU',
              count: 21,
              fontSize: 12,
              imagePath: 'assets/images/hospital.jpg',
              backgroundColor: const Color(0xFFFCF0F0),
              onTap: () {},
            ),
            DashboardCard(
              title: 'Admitted Patients',
              count: 21,
              fontSize: 12,
              imagePath: 'assets/images/bablu5.jpg',
              backgroundColor: const Color(0xFFFCF0F0),
              onTap: () {},
            ),
            DashboardCard(
              title: 'Total Patient',
              count: 21,
              fontSize: 12,
              imagePath: 'assets/images/bablu7.jpg',
              backgroundColor: const Color(0xFFFCF0F0),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
