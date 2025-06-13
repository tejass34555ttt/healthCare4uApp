import 'package:flutter/material.dart';
import 'package:transfer_bedapp/widgets/appbar.dart';
import 'package:transfer_bedapp/widgets/drawerCustom.dart';
import 'package:transfer_bedapp/widgets/executivedetailscard.dart';
import 'package:transfer_bedapp/widgets/executive_detail_card.dart';

class executivedetailspage extends StatelessWidget {
  const executivedetailspage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const CustomDrawer(),
      appBar: CustomAppBar(title: "Beds Available"),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(minHeight: constraints.maxHeight),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    // Bed Info Cards
                    /* Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black12),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      padding: const EdgeInsets.all(16),
                      /*child: GridView.count(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        crossAxisCount: 2,
                        mainAxisSpacing: 16,
                        crossAxisSpacing: 16,
                        childAspectRatio: 1.5,*/
                      /* children: const [
                          BedInfoCard(title: "Request Attended", count: "50"),
                          BedInfoCard(title: "Request Confirmed", count: "50"),
                          BedInfoCard(title: "Pending Request", count: "50"),
                          BedInfoCard(title: "Reserved Be", count: "50"),
                        ],*/
                    ),*/
                    const SizedBox(height: 20),

                    // Executive Details Card
                    const ExecutiveDetailsCard(
                      name: 'Gajendar Daru Gukhane',
                      age: '23yrs',
                      gender: 'Male',
                      contact1: '9023456715',
                      contact2: '7894563213',
                      qualification: 'B.Sc Nursing',
                      joiningDate: '12/02/2024',
                      salary: '₹30,000',
                      attended: '24',
                      confirmed: '20',
                      pending: '2',
                      rejected: '2',
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class BedInfoCard extends StatelessWidget {
  final String title;
  final String count;

  const BedInfoCard({super.key, required this.title, required this.count});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey.shade300,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              count,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.orange,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              title,
              style: const TextStyle(fontSize: 14),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
