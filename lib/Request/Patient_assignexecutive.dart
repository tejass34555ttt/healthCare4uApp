import 'package:flutter/material.dart';
import 'package:transfer_bedapp/Executive/rejectAlertBox.dart';
import 'package:transfer_bedapp/Executive/rejectAlertBoxAdmin.dart';
import 'package:transfer_bedapp/Request/assign_executivepage.dart';
import 'package:transfer_bedapp/widgets/CustomButton.dart';
import 'package:transfer_bedapp/widgets/patient_details_card.dart';

class Patient_assignexecutive extends StatelessWidget {
  const Patient_assignexecutive({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      appBar: AppBar(
        backgroundColor: const Color(0xFF5E6BFD),
        title: const Text("Assign Executive"),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications),
            onPressed: () {
              // Add your notification logic here
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
            border: Border.all(color: Colors.black26),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /*const Text(
                "Patient Details:",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              const Text("Name: "),
              const Text("Age: "),
              const Text("Contact 1: "),
              const Text("Contact 2: "),
              const Text("Address: "),
              const Text("Executive Assigned: "),
              const SizedBox(height: 16),

              const Text(
                "Admission Details:",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              const Text("Ward Type:"),
              const Text("Room No:"),
              const Text("Date Of Admission:"),
              const Text("Type Of Admission:"),
              const Text("Bill Amount:"),
              const SizedBox(height: 16),

              const Text(
                "Documents Uploaded:",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),

              Row(
                children: [
                  const Icon(Icons.picture_as_pdf, color: Colors.red),
                  const SizedBox(width: 8),
                  const Text("Hospital File Copy"),
                  const Spacer(),
                  IconButton(
                    icon: const Icon(Icons.visibility),
                    onPressed: () {
                      // View or open PDF logic
                    },
                  ),
                ],
              ),
              const SizedBox(height: 20),*/
              PatientDetailsCard(
                name: 'name',
                age: 'age',
                gender: 'gender',
                //contact: 'contact',
                address: 'address',
                wardType: 'wardType',
                roomNo: 'roomNo',
                dateOfAdmission: 'dateOfAdmission',
                typeOfAdmission: 'typeOfAdmission',
                billAmount: 'billAmount',
                contact1: '',
                contact2: '',
                documentNames: ['Hospital File Copy', 'Insurance Document'],
                executive: '',
              ),
              SizedBox(height: 20),

              // Assign Executive Button
              Center(
                child: CustomButton(
                  text: "Assign Executive",
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) => AssignExecutiveDialogContent(),
                    );
                  },
                  width: 350,
                  backgroundColor: const Color(0xFF5E6BFD),
                  textColor: Colors.white,
                ),
              ),
              const SizedBox(height: 10),

              // Reject Button (Fixed typo: "Trasnfer" to "Transfer")
              Center(
                child: CustomButton(
                  text: "Transfer Reject",
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) => AdminAlertRejectBox(),
                    );
                  },
                  width: 350,
                  backgroundColor: const Color.fromARGB(255, 235, 94, 99),
                  textColor: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
