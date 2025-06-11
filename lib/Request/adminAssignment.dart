import 'package:flutter/material.dart';
import 'package:transfer_bedapp/Dashboard/dashboardadmin.dart';
import 'package:transfer_bedapp/Executive/rejectAlertBoxAdmin.dart';
import 'package:transfer_bedapp/screens/Auth/verification.dart';
import 'package:transfer_bedapp/widgets/CustomButton.dart';
import 'package:transfer_bedapp/widgets/addScreen.dart';

class AdminAssingingExecutive extends StatelessWidget {
  const AdminAssingingExecutive({super.key});

  @override
  Widget build(BuildContext context) {
    // Drawer control
    final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

    return Scaffold(
      key: scaffoldKey, // Set the key for the scaffold to open the drawer
      // appBar: AppBar(
      //   backgroundColor: const Color(0xFF5E72EB),
      //   title: const Text('Assign Executive', textAlign: TextAlign.center),
      //   centerTitle: true,

      //   actions: const [
      //     Padding(
      //       padding: EdgeInsets.only(right: 16.0),
      //       child: Icon(Icons.notifications_none), // Notification icon
      //     ),
      //   ],
      // ),
      body: Column(
        //mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.6,
            width: MediaQuery.of(context).size.width * 0.8,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                color: const Color.fromARGB(255, 144, 152, 158), // Border color
                width: 2.0, // Border width (stroke)
              ),
              borderRadius: BorderRadius.circular(
                12,
              ), // Optional rounded corners
            ),
            margin: EdgeInsets.all(16),
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Patient Details",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),
                  const Text("Name: John Doe"),
                  const Text("Age: 45"),
                  const Text("Contact: 9876543210"),
                  const Text("Address: Mumbai, India"),
                  const Text("Reason: Surgery"),
                  const Text("Doctor: Dr. Sharma"),
                  const SizedBox(height: 20),
                  const Text(
                    "Bed Transformation Details",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),
                  const Text("Ward Type: General"),
                  const Text("Room No: 205"),
                  const Text("Date: 2025-05-14"),
                  const Text("Expected Duration: 3 days"),
                  const SizedBox(height: 30),
                ],
              ),
            ),
          ),

          Column(
            children: [
              CustomButton(
                text: "Assign",
                onPressed: () {
                  Navigator.pop(context); // Close dialog
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder:
                          (context) => AdSplashPrompt(
                            nextScreen: DashboardScreenAdmin(),
                            content: Center(child: successfulmsg()),
                          ),
                    ),
                  );
                },
                width: 350,
                backgroundColor: const Color(0xFF627AFE),
                textColor: Colors.white,
                //icon: Icons.check,
              ),

              SizedBox(height: 10),

              CustomButton(
                text: "Reject",
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) => AdminAlertRejectBox(),
                  );
                },
                width: 350,
                backgroundColor: Color.fromARGB(255, 235, 94, 99),
                textColor: Colors.white,
                //icon: Icons.check,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
