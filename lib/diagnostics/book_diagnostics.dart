import 'package:flutter/material.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';
import 'package:transfer_bedapp/Dashboard/userhome.dart';
import 'package:transfer_bedapp/Request/Request_DiagnosticsServices.dart';
import 'package:transfer_bedapp/widgets/CustomButton.dart';
import 'package:transfer_bedapp/widgets/Date_piker1.dart';
import 'package:transfer_bedapp/widgets/File_pickercard.dart';
import 'package:transfer_bedapp/widgets/TextField.dart';
import 'package:transfer_bedapp/widgets/appbar.dart';
import 'package:transfer_bedapp/widgets/drawerCustom.dart';
import 'package:transfer_bedapp/widgets/radioButtons.dart';

class BookDiagnosticsServies extends StatefulWidget {
  const BookDiagnosticsServies({super.key});

  @override
  State<BookDiagnosticsServies> createState() => _BookDiagnosticsServiesState();
}

class _BookDiagnosticsServiesState extends State<BookDiagnosticsServies> {
  TextEditingController nameController = TextEditingController();
  TextEditingController ageController = TextEditingController();
  TextEditingController contactController = TextEditingController();
  TextEditingController alternateNoController = TextEditingController();
  TextEditingController locationController = TextEditingController();
  TextEditingController preferredCityController = TextEditingController();

  String? selectedType;
  String? selectedServiceType;
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
    "Blood Test",
    "Urine Test",
    "Culture Test",
    "COVID-19 Test",
    "Hormonal Panels",
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const CustomDrawer(),
      appBar: CustomAppBar(title: "Diagnostic Services"),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              " Personal Details:",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),

            TextfieldCustom(
              controller: nameController,
              labelTextInput: "Enter Patients Name",
              prefixIcon: Icons.person,
              inputType: TextInputType.name,
            ),

            TextfieldCustom(
              controller: ageController,
              labelTextInput: "Age",
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
            FilePickerDiagnistics(
              onFileSelected: (file) => print("Selected: ${file.name}"),
            ),
            SizedBox(height: 10),
            const Text(
              " Appointments Details:",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),

            DatePicker(
              hintText: "Preferred Date",
              onDateSelected: (date) {
                print('Date of Addmission: $date');
              },
            ),

            const SizedBox(height: 10),

            TextfieldCustom(
              controller: preferredCityController,
              labelTextInput: "Preferred City",
              prefixIcon: TablerIcons.ambulance,
              inputType: TextInputType.name,
            ),
            const SizedBox(height: 04),
            TextfieldCustom(
              controller: locationController,
              labelTextInput: "Location",
              prefixIcon: TablerIcons.location,
              inputType: TextInputType.name,
            ),
            const SizedBox(height: 10),

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
                        builder: (context) => RequestDagnosticsServices(),
                      ),
                    );
                  },

                  backgroundColor: const Color(0xFF5E72EB),
                  textColor: Colors.white,
                ),
              ),
            ),
            const SizedBox(height: 30),

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

                  backgroundColor: const Color.fromARGB(255, 184, 37, 37),
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
