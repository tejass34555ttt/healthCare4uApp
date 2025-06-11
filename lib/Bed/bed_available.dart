import 'package:flutter/material.dart';
import 'package:transfer_bedapp/widgets/appbar.dart';
import 'package:transfer_bedapp/widgets/drawerCustom.dart';

class BedsAvailablePage extends StatelessWidget {
  const BedsAvailablePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*appBar: AppBar(
        title: const Text("Beds Available"),
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
      appBar: CustomAppBar(title: "Beds Available"),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Bed Info Cards
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black12),
                borderRadius: BorderRadius.circular(16),
              ),
              padding: const EdgeInsets.all(16),
              child: GridView.count(
                shrinkWrap: true,
                crossAxisCount: 2,
                mainAxisSpacing: 16,
                crossAxisSpacing: 16,
                childAspectRatio: 1.5,
                children: const [
                  BedInfoCard(title: "Total Beds", count: "50"),
                  BedInfoCard(title: "Available Beds", count: "50"),
                  BedInfoCard(title: "Occupied Beds", count: "50"),
                  BedInfoCard(title: "Reserved Beds", count: "50"),
                ],
              ),
            ),
            const SizedBox(height: 24),
            // Ward-wise Availability
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black12),
                borderRadius: BorderRadius.circular(16),
              ),
              padding: const EdgeInsets.all(16),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Ward-wise Bed Availability:",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  SizedBox(height: 16),
                  WardAvailabilityRow(
                    ward: "General Ward",
                    availability: "10 Available",
                  ),
                  WardAvailabilityRow(ward: "ICU", availability: "5 Available"),
                  WardAvailabilityRow(
                    ward: "Delux",
                    availability: "3 Available",
                  ),
                  WardAvailabilityRow(
                    ward: "Special",
                    availability: "5 Available",
                  ),
                  WardAvailabilityRow(
                    ward: "Maternity",
                    availability: "5 Available",
                  ),
                ],
              ),
            ),
          ],
        ),
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

class WardAvailabilityRow extends StatelessWidget {
  final String ward;
  final String availability;

  const WardAvailabilityRow({
    super.key,
    required this.ward,
    required this.availability,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(ward, style: const TextStyle(fontWeight: FontWeight.w500)),
          Text(availability),
        ],
      ),
    );
  }
}
