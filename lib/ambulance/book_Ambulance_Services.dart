import 'package:flutter/material.dart';
import 'package:transfer_bedapp/Dashboard/userhome.dart';
import 'package:transfer_bedapp/widgets/CustomButton.dart';
import 'package:transfer_bedapp/widgets/FilePickerInput%20copy.dart';
import 'package:transfer_bedapp/widgets/TextField.dart';
import 'package:transfer_bedapp/widgets/dropDownSelector.dart';
import 'package:transfer_bedapp/widgets/appbar.dart';
import 'package:transfer_bedapp/widgets/drawerCustom.dart';

class BookAmbulanceservices extends StatefulWidget {
  const BookAmbulanceservices({super.key});

  @override
  State<BookAmbulanceservices> createState() => _BookAmbulanceservicesState();
}

class _BookAmbulanceservicesState extends State<BookAmbulanceservices> {
  TextEditingController nameController = TextEditingController();
  TextEditingController ageController = TextEditingController();
  TextEditingController contactController = TextEditingController();
  TextEditingController alternateNoController = TextEditingController();
  TextEditingController locationController = TextEditingController();
  TextEditingController preferredCity2Controller = TextEditingController();
  TextEditingController preferredCity3Controller = TextEditingController();
  TextEditingController preferredHospital1Controller = TextEditingController();
  TextEditingController preferredHospital2Controller = TextEditingController();
  TextEditingController preferredHospital3Controller = TextEditingController();
  TextEditingController cityController = TextEditingController();
  TextEditingController centerNameController = TextEditingController();
  TextEditingController pinCodeController = TextEditingController();

  String? selectedAmbulanceType;
  String? selectedFacility;
  String? selectedType;
  String? selectedAddmissionType;

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
              controller: locationController,
              labelTextInput: "Loacation ",
              prefixIcon: Icons.location_city,
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
            SizedBox(
              height: 40,
              child: CustomDropdownTextField(
                label: "Vehicle Type",
                labeltext: "Vehicle Type",
                value: selectedAmbulanceType,
                items: [
                  "Basic Life Support(BLS)",
                  "Advanced Life Support (ALS)",
                  "Cardiac Ambulance",
                  "ICU on Wheels",
                  "Dead Body Carrier",
                  "Neonatal Ambulance",
                  "Other",
                ],
                onChanged: (val) => setState(() => selectedAmbulanceType = val),
              ),
            ),
            const SizedBox(height: 10),
            FilePickerHospital(
              onFileSelected: (file) => print("Selected: ${file.name}"),
            ),
            const SizedBox(height: 10),

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
