import 'package:flutter/material.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';
import 'package:transfer_bedapp/Dashboard/userhome.dart';
import 'package:transfer_bedapp/Request/request_details.dart';
import 'package:transfer_bedapp/screens/Auth/verification.dart';
import 'package:transfer_bedapp/widgets/CustomButton.dart';
import 'package:transfer_bedapp/widgets/DatePicker.dart';
import 'package:transfer_bedapp/widgets/Date_piker1.dart';
import 'package:transfer_bedapp/widgets/FilePickerInput%20copy.dart';
import 'package:transfer_bedapp/widgets/FilePickerInput.dart';
import 'package:transfer_bedapp/widgets/TextField.dart';
import 'package:transfer_bedapp/widgets/addScreen.dart';
import 'package:transfer_bedapp/widgets/dropDownSelector.dart';
import 'package:transfer_bedapp/widgets/appbar.dart';
import 'package:transfer_bedapp/widgets/drawerCustom.dart';
import 'package:transfer_bedapp/widgets/radioButtons.dart';

class HomeMedicalservices extends StatefulWidget {
  const HomeMedicalservices({super.key});

  @override
  State<HomeMedicalservices> createState() => _HomeMedicalservicesState();
}

class _HomeMedicalservicesState extends State<HomeMedicalservices> {
  TextEditingController nameController = TextEditingController();
  TextEditingController ageController = TextEditingController();
  TextEditingController contactController = TextEditingController();
  TextEditingController alternateNoController = TextEditingController();
  TextEditingController locationController = TextEditingController();
  TextEditingController medicalController = TextEditingController();
  TextEditingController radiologyServicesTypesController =
      TextEditingController();

  String? selectedmedicalServices;
  String? selectedFacility;
  String? selectedType;
  String? selectedradiologyServicesTypes;

  final List<String> radiologyServicesTypes = [
    "pathology Services",
    "Nursing Care",
    "Physiotherapy",
    "Occupational Theraphy",
    "Other ",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const CustomDrawer(),
      appBar: CustomAppBar(title: "Ambulance Service"),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Booking Details:",
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
              labelTextInput: "Cantact No.",
              prefixIcon: Icons.phone,
              inputType: TextInputType.phone,
            ),
            TextfieldCustom(
              controller: alternateNoController,
              labelTextInput: "Alternate Contact No.",
              prefixIcon: Icons.person_pin,
              inputType: TextInputType.phone,
            ),

            const SizedBox(height: 10),
            FilePickerHospital(
              onFileSelected: (file) => print("Selected: ${file.name}"),
            ),
            const SizedBox(height: 10),
            SizedBox(height: 10),
            const SizedBox(height: 30),

            Radiobuttons(
              title: "Pathology Lab Services",
              options: radiologyServicesTypes,
              selected: selectedradiologyServicesTypes,
              onChanged:
                  (val) => setState(() => selectedradiologyServicesTypes = val),
            ),
            SizedBox(height: 20),

            Center(
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.9,
                child: CustomButton(
                  text: "book",
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Dashboard()),
                    );
                  },

                  backgroundColor: const Color.fromARGB(255, 57, 79, 201),
                  textColor: Colors.white,
                ),
              ),
            ),
            const SizedBox(height: 20),
            Center(
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.9,
                child: CustomButton(
                  text: "Cancel",
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Dashboard()),
                    );
                  },

                  backgroundColor: const Color.fromARGB(255, 210, 34, 34),
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
