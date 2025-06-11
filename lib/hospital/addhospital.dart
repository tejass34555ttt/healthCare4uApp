import 'package:flutter/material.dart';
import 'package:transfer_bedapp/widgets/CustomButton.dart';
import 'package:transfer_bedapp/widgets/FilePickerInput.dart';
import 'package:transfer_bedapp/widgets/TextField.dart';
import 'package:transfer_bedapp/widgets/dropDownSelector.dart';
import 'package:transfer_bedapp/widgets/appbar.dart';
import 'package:transfer_bedapp/widgets/drawerCustom.dart';

class AddHospitalForm extends StatefulWidget {
  const AddHospitalForm({super.key});

  @override
  State<AddHospitalForm> createState() => _AddHospitalFormState();
}

class _AddHospitalFormState extends State<AddHospitalForm> {
  TextEditingController nameController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController contactController = TextEditingController();
  TextEditingController directorController = TextEditingController();
  TextEditingController hospitalNameController = TextEditingController();
  TextEditingController regNoController = TextEditingController();
  TextEditingController associatedDoctorsController = TextEditingController();
  TextEditingController visitingDoctorsController = TextEditingController();
  TextEditingController bedsController = TextEditingController();
  TextEditingController icuController = TextEditingController();
  TextEditingController insuranceController = TextEditingController();
  TextEditingController othersController = TextEditingController();

  String? selectedFirmType;
  String? selectedFacility;
  String? selectedService;
  @override
  void dispose() {
    nameController.dispose();
    addressController.dispose();
    contactController.dispose();
    directorController.dispose();
    hospitalNameController.dispose();
    regNoController.dispose();
    associatedDoctorsController.dispose();
    visitingDoctorsController.dispose();
    bedsController.dispose();
    icuController.dispose();
    insuranceController.dispose();
    othersController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: const CustomDrawer(),
      appBar: CustomAppBar(title: "Add Hospital"),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 500),
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
                  controller: addressController,
                  labelTextInput: "Enter Address",
                  prefixIcon: Icons.home,
                  inputType: TextInputType.streetAddress,
                ),

                TextfieldCustom(
                  controller: contactController,
                  labelTextInput: "Contact No.",
                  prefixIcon: Icons.phone,
                  inputType: TextInputType.phone,
                ),

                CustomDropdownTextField(
                  label: "Firm Type",
                  value: selectedFirmType,
                  items: ["Private", "Government", "Charitable Trust"],
                  onChanged: (val) => setState(() => selectedFirmType = val),
                ),
                const SizedBox(height: 12),

                TextfieldCustom(
                  controller: directorController,
                  labelTextInput: "Director Name",
                  prefixIcon: Icons.person_pin,
                  inputType: TextInputType.name,
                ),

                FilePickerInput(
                  label: "Upload ID Proof",
                  onFileSelected: (file) => print("Selected: ${file.name}"),
                ),

                const SizedBox(height: 30),
                const Text(
                  "Hospital Details:",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 20),

                TextfieldCustom(
                  controller: hospitalNameController,
                  labelTextInput: "Enter Hospital Name",
                  prefixIcon: Icons.local_hospital,
                  inputType: TextInputType.name,
                ),

                TextfieldCustom(
                  controller: regNoController,
                  labelTextInput: "Hospital Registration No",
                  prefixIcon: Icons.confirmation_number,
                  inputType: TextInputType.text,
                ),
                const SizedBox(height: 12),

                CustomDropdownTextField(
                  label: "Facilities",
                  value: selectedFacility,
                  items: ["OPD", "Emergency", "Diagnostics", "Pharmacy"],
                  onChanged: (val) => setState(() => selectedFacility = val),
                ),
                const SizedBox(height: 12),

                CustomDropdownTextField(
                  label: "Service Treatments",
                  value: selectedService,
                  items: ["Cardiology", "Orthopedics", "Oncology", "Neurology"],
                  onChanged: (val) => setState(() => selectedService = val),
                ),
                const SizedBox(height: 12),

                TextfieldCustom(
                  controller: associatedDoctorsController,
                  labelTextInput: "Associated Doctors",
                  prefixIcon: Icons.people,
                  inputType: TextInputType.text,
                ),

                TextfieldCustom(
                  controller: visitingDoctorsController,
                  labelTextInput: "Visiting Doctors",
                  prefixIcon: Icons.person_search,
                  inputType: TextInputType.text,
                ),

                TextfieldCustom(
                  controller: bedsController,
                  labelTextInput: "Beds Available",
                  prefixIcon: Icons.bed,
                  inputType: TextInputType.number,
                ),

                TextfieldCustom(
                  controller: icuController,
                  labelTextInput: "ICU",
                  prefixIcon: Icons.monitor_heart,
                  inputType: TextInputType.text,
                ),

                TextfieldCustom(
                  controller: insuranceController,
                  labelTextInput: "Insurance/Schemes/Yojanas",
                  prefixIcon: Icons.policy,
                  inputType: TextInputType.text,
                ),

                TextfieldCustom(
                  controller: othersController,
                  labelTextInput: "Others",
                  prefixIcon: Icons.more_horiz,
                  inputType: TextInputType.text,
                ),

                const SizedBox(height: 40),

                Center(
                  child: SizedBox(
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
        ),
      ),
    );
  }
}
