import 'package:flutter/material.dart';
import 'package:transfer_bedapp/Executive/rejectAlertBox.dart';
import 'package:transfer_bedapp/Executive/rejectAlertBoxAdmin.dart';
import 'package:transfer_bedapp/Request/assign_executivepage.dart';
import 'package:transfer_bedapp/widgets/CustomButton.dart';
import 'package:transfer_bedapp/widgets/patient_details_card.dart';

class PatientDetailsPage extends StatelessWidget {
  const PatientDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      appBar: AppBar(
        backgroundColor: const Color(0xFF5E6BFD),
        title: const Text("Patient Details"),
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
              PatientDetailsCard(
                name: 'name',
                age: 'age',
                gender: 'gender',
                contact1: 'contact1',
                contact2: 'contact2',
                address: 'address',
                executive: 'executive',
                wardType: 'wardType',
                roomNo: 'roomNo',
                dateOfAdmission: 'dateOfAdmission',
                typeOfAdmission: 'typeOfAdmission',
                billAmount: 'billAmount',
                documentNames: ['Hospital File Copy', 'Insurance Document'],
              ),
              // Assign Executive Button
              /* CustomButton(
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
              const SizedBox(height: 10),*/

              // Reject Button (Fixed typo: "Trasnfer" to "Transfer")
              /* CustomButton(
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
              ),*/
            ],
          ),
        ),
      ),
    );
  }
}
