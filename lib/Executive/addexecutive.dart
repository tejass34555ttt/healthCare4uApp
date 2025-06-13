import 'package:flutter/material.dart';
import 'package:transfer_bedapp/widgets/CustomButton.dart';
import 'package:transfer_bedapp/widgets/DatePicker.dart';
import 'package:transfer_bedapp/widgets/FilePickerInput.dart';
import 'package:transfer_bedapp/widgets/TextField.dart';
import 'package:transfer_bedapp/widgets/dropDownSelector.dart';
import 'package:transfer_bedapp/widgets/appbar.dart';
import 'package:transfer_bedapp/widgets/drawerCustom.dart';
import 'package:intl/intl.dart'; // For formatting the date

class AddExecutiveScreen extends StatefulWidget {
  const AddExecutiveScreen({super.key});
  @override
  State<AddExecutiveScreen> createState() => _AddHospitalFormState();
}

class _AddHospitalFormState extends State<AddExecutiveScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController ageController = TextEditingController();
  TextEditingController alternatecontactController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController qualificationController = TextEditingController();
  TextEditingController dateController = TextEditingController();
  TextEditingController associatedDoctorsController = TextEditingController();
  TextEditingController visitingDoctorsController = TextEditingController();
  TextEditingController salaryController = TextEditingController();

  String? selectedFirmType;
  String? selectedFacility;
  String? selectedService;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const CustomDrawer(),
      appBar: CustomAppBar(title: "Add Executive"),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Add Executive Details:",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),

            TextfieldCustom(
              controller: nameController,
              labelTextInput: "Enter Name",
              prefixIcon: Icons.person,
              inputType: TextInputType.name,
            ),

            TextfieldCustom(
              controller: ageController,
              labelTextInput: "Enter Age",
              prefixIcon: Icons.person_3_outlined,
              inputType: TextInputType.streetAddress,
            ),

            TextfieldCustom(
              controller: alternatecontactController,
              labelTextInput: "Contact No.",
              prefixIcon: Icons.phone,
              inputType: TextInputType.phone,
            ),

            TextfieldCustom(
              controller: alternatecontactController,
              labelTextInput: "Alternate Contact No.",
              prefixIcon: Icons.call,
              inputType: TextInputType.phone,
            ),

            TextfieldCustom(
              controller: addressController,
              labelTextInput: "address",
              prefixIcon: Icons.home,
              inputType: TextInputType.name,
            ),

            FilePickerInput(
              label: "Upload ID Proof",
              onFileSelected: (file) => print("Selected: ${file.name}"),
            ),

            const SizedBox(height: 30),

            TextfieldCustom(
              controller: qualificationController,
              labelTextInput: "Qualification",
              prefixIcon: Icons.cast_for_education,
              inputType: TextInputType.name,
            ),

            TextfieldCustom(
              controller: dateController,
              labelTextInput: "Date Of Joining",
              prefixIcon: Icons.calendar_month,
              inputType: TextInputType.text,
            ),
            DatePickerField(
              label: 'Select Date',
              onDateSelected: (date) {
                print('Selected date: $date');
              },
            ),

            const SizedBox(height: 12),

            TextfieldCustom(
              controller: salaryController,
              labelTextInput: "Salary",
              prefixIcon: Icons.currency_rupee_sharp,
              inputType: TextInputType.number,
            ),

            Center(
              child: Container(
                width: MediaQuery.of(context).size.width * 0.9,
                child: CustomButton(
                  text: "Submit",
                  onPressed: () {
                    print("Hospital form submitted!");
                  },

                  backgroundColor: const Color(0xFF5E72EB),
                  textColor: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
