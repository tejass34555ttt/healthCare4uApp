import 'package:flutter/material.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';
import 'package:transfer_bedapp/widgets/CustomButton.dart';
import 'package:transfer_bedapp/widgets/FilePickerInput.dart';
import 'package:transfer_bedapp/widgets/TextField.dart';
import 'package:transfer_bedapp/widgets/dropDownSelector.dart';
import 'package:transfer_bedapp/widgets/appbar.dart';
import 'package:transfer_bedapp/widgets/drawerCustom.dart';
import 'package:transfer_bedapp/widgets/radioButtons.dart';

class AddAmbulanceForm extends StatefulWidget {
  const AddAmbulanceForm({super.key});

  @override
  State<AddAmbulanceForm> createState() => _AddAmbulanceFormState();
}

class _AddAmbulanceFormState extends State<AddAmbulanceForm> {
  TextEditingController ambulancenameController = TextEditingController();
  TextEditingController ownernameController = TextEditingController();
  TextEditingController contactController = TextEditingController();
  TextEditingController alternateNoController = TextEditingController();
  TextEditingController officeNameController = TextEditingController();
  TextEditingController cityController = TextEditingController();
  TextEditingController pinCodeController = TextEditingController();

  String? selectedStateType;
  String? selectedFacility;
  String? selectedService;
  String? selectedAmbulanceType;
  String? selectedAvailability;
  final List<String> ambulanceTypes = [
    "Basic Life Support(BLS)",
    "Advanced Life Support (ALS)",
    "Cardiac Ambulance",
    "ICU on Wheels",
    "Dead Body Carrier",
    "Neonatal Ambulance",
    "Other",
  ];
  final List<String> availability = ["Yes", "No", "On Call Only"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const CustomDrawer(),
      appBar: CustomAppBar(title: "Add Ambulance Vendor"),
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
              controller: ambulancenameController,
              labelTextInput: "Ambulance Service Name",
              prefixIcon: Icons.person,
              inputType: TextInputType.name,
            ),

            TextfieldCustom(
              controller: ownernameController,
              labelTextInput: "Owner/Manager Name",
              prefixIcon: Icons.home,
              inputType: TextInputType.name,
            ),

            TextfieldCustom(
              controller: contactController,
              labelTextInput: "Mobile No(WhatsApp enabled)",
              prefixIcon: Icons.phone,
              inputType: TextInputType.phone,
            ),
            TextfieldCustom(
              controller: alternateNoController,
              labelTextInput: "Alternate Mobile No.",
              prefixIcon: Icons.person_pin,
              inputType: TextInputType.phone,
            ),
            TextfieldCustom(
              controller: officeNameController,
              labelTextInput: "Office Address",
              prefixIcon: Icons.local_post_office_sharp,
              inputType: TextInputType.streetAddress,
            ),
            TextfieldCustom(
              controller: cityController,
              labelTextInput: "City",
              prefixIcon: Icons.location_city,
              inputType: TextInputType.text,
            ),
            TextfieldCustom(
              controller: pinCodeController,
              labelTextInput: "pin code",
              prefixIcon: Icons.pin,
              inputType: TextInputType.number,
            ),

            SizedBox(
              height: 40,
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

            FilePickerInput(
              label: "Upload ID Proof",
              onFileSelected: (file) => print("Selected: ${file.name}"),
            ),

            const SizedBox(height: 30),
            const Text(
              "Ambulance Details:",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            TextfieldCustom(
              controller: pinCodeController,
              labelTextInput: "No. of Ambulance",
              prefixIcon: TablerIcons.ambulance,
              inputType: TextInputType.number,
            ),
            const SizedBox(height: 30),

            Radiobuttons(
              title: "Type of Ambulance",
              options: ambulanceTypes,
              selected: selectedAmbulanceType,
              onChanged: (val) => setState(() => selectedAmbulanceType = val),
            ),
            const SizedBox(height: 30),

            Radiobuttons(
              title: "24/7 Service Availability",
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
