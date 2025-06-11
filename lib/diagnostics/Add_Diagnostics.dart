import 'package:flutter/material.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';
import 'package:transfer_bedapp/widgets/CustomButton.dart';
import 'package:transfer_bedapp/widgets/FilePickerInput.dart';
import 'package:transfer_bedapp/widgets/TextField.dart';
import 'package:transfer_bedapp/widgets/dropDownSelector.dart';
import 'package:transfer_bedapp/widgets/appbar.dart';
import 'package:transfer_bedapp/widgets/drawerCustom.dart';
import 'package:transfer_bedapp/widgets/radioButtons.dart';

class AddDiagnosticsForm extends StatefulWidget {
  const AddDiagnosticsForm({super.key});

  @override
  State<AddDiagnosticsForm> createState() => _AddDiagnosticsFormState();
}

class _AddDiagnosticsFormState extends State<AddDiagnosticsForm> {
  TextEditingController nameController = TextEditingController();
  TextEditingController designationController = TextEditingController();
  TextEditingController contactController = TextEditingController();
  TextEditingController alternateNoController = TextEditingController();
  TextEditingController registrationNoController = TextEditingController();
  TextEditingController cityController = TextEditingController();
  TextEditingController centerNameController = TextEditingController();
  TextEditingController pinCodeController = TextEditingController();

  String? selectedStateType;
  String? selectedFacility;
  String? selectedType;
  String? selectedServiceType;
  String? selectedAvailability;
  String? selectedPathologyServices;
  String? selectedspecializedMedicalTest;
  final List<String> radiologyServicesTypes = [
    "X-ray",
    "CT Scan",
    "MRI",
    "Ultrasound",
    "Mammography",
    "Other",
  ];
  final List<String> pathologyServices = [
    "X-ray",
    "CT Scan",
    "MRI",
    "Ultrasound",
    "Mammography",
    "Other",
  ];

  final List<String> specializedMedicalTest = [
    "ECG",
    "Treadmill Test (TMT)/Stress Test ECO",
    "2D ECO",
    "Color Doppler",
    "Flip Study",
    "Generic Study",
    "Bone Mineral Study",
    "Other",
  ];
  final List<String> availability = ["Yes", "No"];

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
              labelTextInput: "Enter Name",
              prefixIcon: Icons.person,
              inputType: TextInputType.name,
            ),

            TextfieldCustom(
              controller: designationController,
              labelTextInput: "Designation",
              prefixIcon: Icons.person,
              inputType: TextInputType.text,
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
            FilePickerInput(
              onFileSelected: (file) => print("Selected: ${file.name}"),
            ),
            SizedBox(height: 10),
            TextfieldCustom(
              controller: registrationNoController,
              labelTextInput: "Registration No. ",
              prefixIcon: Icons.app_registration,
              inputType: TextInputType.number,
            ),
            SizedBox(
              height: 46,
              child: CustomDropdownTextField(
                label: "Select Type",
                value: selectedType,
                items: [
                  "lab service",
                  "radiology",
                  "specialized madical test ",
                ],
                onChanged: (val) => setState(() => selectedType = val),
              ),
            ),
            const SizedBox(height: 30),
            const Text(
              "Ambulance Details:",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            TextfieldCustom(
              controller: centerNameController,
              labelTextInput: "Center Name",
              prefixIcon: TablerIcons.ambulance,
              inputType: TextInputType.name,
            ),
            const SizedBox(height: 10),
            TextfieldCustom(
              controller: cityController,
              labelTextInput: "City",
              prefixIcon: TablerIcons.address_book,
              inputType: TextInputType.name,
            ),
            const SizedBox(height: 10),
            SizedBox(
              height: 50,
              child: CustomDropdownTextField(
                label: "state",
                labeltext: "select State",
                value: selectedStateType,
                items: [
                  'Andhra Pradesh',
                  'Arunachal Pradesh',
                  'Assam',
                  'Bihar',
                  'Chhattisgarh',
                  'Goa',
                  'Gujarat',
                  'Haryana',
                  'Himachal Pradesh',
                  'Jharkhand',
                  'Karnataka',
                  'Kerala',
                  'Madhya Pradesh',
                  'Maharashtra',
                  'Manipur',
                  'Meghalaya',
                  'Mizoram',
                  'Nagaland',
                  'Odisha',
                  'Punjab',
                  'Rajasthan',
                  'Sikkim',
                  'Tamil Nadu',
                  'Telangana',
                  'Tripura',
                  'Uttar Pradesh',
                  'Uttarakhand',
                  'West Bengal',
                ],
                onChanged: (val) => setState(() => selectedStateType = val),
              ),
            ),
            const SizedBox(height: 12),

            const SizedBox(height: 30),
            const Text(
              "Ambulance Details:",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            TextfieldCustom(
              controller: centerNameController,
              labelTextInput: "No. of Ambulance",
              prefixIcon: TablerIcons.ambulance,
              inputType: TextInputType.number,
            ),
            const SizedBox(height: 30),

            Radiobuttons(
              title: "Type of radiology service",
              options: radiologyServicesTypes,
              selected: selectedServiceType,
              onChanged: (val) => setState(() => selectedServiceType = val),
            ),
            const SizedBox(height: 30),
            Radiobuttons(
              title: "Pathology Lab Services",
              options: pathologyServices,
              selected: selectedPathologyServices,
              onChanged:
                  (val) => setState(() => selectedPathologyServices = val),
            ),
            Radiobuttons(
              title: "Specialized Medical Test",
              options: specializedMedicalTest,
              selected: selectedspecializedMedicalTest,
              onChanged:
                  (val) => setState(() => selectedspecializedMedicalTest = val),
            ),

            Radiobuttons(
              title: "Home Sample Collection available?",
              options: availability,
              selected: selectedAvailability,
              onChanged: (val) => setState(() => selectedAvailability = val),
            ),

            const SizedBox(height: 40),

            Center(
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.9,
                child: CustomButton(
                  text: "Submit",
                  onPressed: () {
                    print("Ambulance form submitted!");
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
