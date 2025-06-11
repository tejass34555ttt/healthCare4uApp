import 'package:flutter/material.dart';
import 'package:transfer_bedapp/widgets/appbar.dart';

import 'package:transfer_bedapp/widgets/dashboardcard.dart';
import 'package:transfer_bedapp/widgets/drawerCustom.dart';

class bedadmin extends StatefulWidget {
  const bedadmin({super.key});

  @override
  State<bedadmin> createState() => _bedadminState();
}

class _bedadminState extends State<bedadmin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: const CustomAppBar(title: 'Dashboard'),
      drawer: const CustomDrawer(),
      appBar: CustomAppBar(title: "Dashboard"),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.count(
          shrinkWrap: true,
          crossAxisCount: 2,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
          children: [
            DashboardCard(
              title: 'New Patients',

              fontSize: 12,
              count: 31,
              imagePath: 'assets/images/bablu7.jpg',
              backgroundColor: Color(0xFFFCF0F0),
              onTap: () {
                print('New Patients tapped');
              },
            ),
            DashboardCard(
              title: 'New Patients',

              fontSize: 12,
              count: 31,
              imagePath: 'assets/images/bablu7.jpg',
              backgroundColor: Color(0xFFFCF0F0),
              onTap: () {
                print('New Patients tapped');
              },
            ),
          ],
        ),
      ),
    );
  }
}
