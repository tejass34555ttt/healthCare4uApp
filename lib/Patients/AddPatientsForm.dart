import 'package:flutter/material.dart';
import 'package:transfer_bedapp/Request/request_details.dart';
import 'package:transfer_bedapp/screens/Auth/verification.dart';
import 'package:transfer_bedapp/widgets/CustomButton.dart';
import 'package:transfer_bedapp/widgets/Date_piker1.dart';
import 'package:transfer_bedapp/widgets/FilePickerInput%20copy.dart';
import 'package:transfer_bedapp/widgets/TextField.dart';
import 'package:transfer_bedapp/widgets/addScreen.dart';
import 'package:transfer_bedapp/widgets/dropDownSelector.dart';
import 'package:transfer_bedapp/widgets/appbar.dart';
import 'package:transfer_bedapp/widgets/drawerCustom.dart';

class AddPatientsForm extends StatefulWidget {
  const AddPatientsForm({super.key});

  @override
  State<AddPatientsForm> createState() => _AddPatientsFormState();
}

class _AddPatientsFormState extends State<AddPatientsForm> {
  TextEditingController nameController = TextEditingController();
  TextEditingController ageController = TextEditingController();
  TextEditingController contactController = TextEditingController();
  TextEditingController alternateNoController = TextEditingController();
  TextEditingController preferredCity1Controller = TextEditingController();
  TextEditingController preferredCity2Controller = TextEditingController();
  TextEditingController preferredCity3Controller = TextEditingController();
  TextEditingController preferredHospital1Controller = TextEditingController();
  TextEditingController preferredHospital2Controller = TextEditingController();
  TextEditingController preferredHospital3Controller = TextEditingController();
  TextEditingController cityController = TextEditingController();
  TextEditingController centerNameController = TextEditingController();
  TextEditingController pinCodeController = TextEditingController();

  String? selectedStateType;
  String? selectedFacility;
  String? selectedType;
  String? selectedAddmissionType;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const CustomDrawer(),
      appBar: CustomAppBar(title: "Add Diagnostic"),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Add Personal Details:",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),

            TextfieldCustom(
              controller: nameController,
              labelTextInput: " Enter Patients  Name",
              prefixIcon: Icons.person,
              inputType: TextInputType.name,
            ),

            TextfieldCustom(
              controller: ageController,
              labelTextInput: "Enter your Age",
              prefixIcon: Icons.calendar_month,
              inputType: TextInputType.number,
            ),

            TextfieldCustom(
              controller: contactController,
              labelTextInput: "Cantact No.)",
              prefixIcon: Icons.phone,
              inputType: TextInputType.phone,
            ),
            TextfieldCustom(
              controller: alternateNoController,
              labelTextInput: "Alternate Contact No.",
              prefixIcon: Icons.person_pin,
              inputType: TextInputType.phone,
            ),
            FilePickerHospital(
              onFileSelected: (file) => print("Selected: ${file.name}"),
            ),
            const SizedBox(height: 10),
            const Text(
              "Preferred City:",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            TextfieldCustom(
              controller: preferredCity1Controller,
              labelTextInput: "Preferred City 1 ",
              prefixIcon: Icons.location_city,
              inputType: TextInputType.text,
            ),
            SizedBox(height: 10),
            TextfieldCustom(
              controller: preferredCity2Controller,
              labelTextInput: "Preferred City 2 ",
              prefixIcon: Icons.location_city,
              inputType: TextInputType.text,
            ),
            SizedBox(height: 10),
            TextfieldCustom(
              controller: preferredCity3Controller,
              labelTextInput: "Preferred City 3 ",
              prefixIcon: Icons.location_city,
              inputType: TextInputType.text,
            ),
            const SizedBox(height: 10),

            const Text(
              "Preferred Hospitals:",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),

            TextfieldCustom(
              controller: preferredHospital1Controller,
              labelTextInput: "Preferred Hospitals 1 ",
              prefixIcon: Icons.local_hospital,
              inputType: TextInputType.text,
            ),
            SizedBox(height: 10),
            TextfieldCustom(
              controller: preferredHospital2Controller,
              labelTextInput: "Preferred Hospitals 2 ",
              prefixIcon: Icons.local_hospital_sharp,
              inputType: TextInputType.text,
            ),
            SizedBox(height: 10),
            TextfieldCustom(
              controller: preferredHospital3Controller,
              labelTextInput: "Preferred Hospitals 3 ",
              prefixIcon: Icons.local_hospital,
              inputType: TextInputType.text,
            ),
            const SizedBox(height: 10),
            const Text(
              "Addmission Details:",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            SizedBox(
              height: 43,
              child: CustomDropdownTextField(
                label: "Select Ward Type",
                value: selectedType,
                items: [
                  "General",
                  "special",
                  "ICU ",
                  "Deluxe",
                  "suit",
                  "Other",
                ],
                onChanged: (val) => setState(() => selectedType = val),
              ),
            ),
            const SizedBox(height: 20),

            DatePicker(
              hintText: "Date of Admission",
              onDateSelected: (date) {
                print('Date of Addmission: $date');
              },
            ),
            const SizedBox(height: 30),
            SizedBox(
              height: 43,
              child: CustomDropdownTextField(
                label: "Type of Addmission",
                value: selectedAddmissionType,
                items: ["type 1", "type 2", "type 3 ", "type 4", "type 5"],
                onChanged:
                    (val) => setState(() => selectedAddmissionType = val),
              ),
            ),
            const SizedBox(height: 40),

            Center(
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.9,
                child: CustomButton(
                  text: "Submit",
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder:
                            (context) => AdSplashPrompt(
                              nextScreen: const RequestDetailsPage(),
                              content: Center(child: successfulmsg()),
                            ),
                      ),
                    );
                  },

                  backgroundColor: const Color.fromARGB(255, 3, 4, 10),
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
