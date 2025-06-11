import 'package:flutter/material.dart';
import 'package:transfer_bedapp/Request/request_details.dart';
import 'package:transfer_bedapp/screens/Auth/verification.dart';
import 'package:transfer_bedapp/widgets/CustomButton.dart';
import 'package:transfer_bedapp/widgets/DatePicker.dart';
import 'package:transfer_bedapp/widgets/FilePickerInput.dart';
import 'package:transfer_bedapp/widgets/TextField.dart';
import 'package:transfer_bedapp/widgets/addScreen.dart';
import 'package:transfer_bedapp/widgets/appbar.dart';
import 'package:transfer_bedapp/widgets/drawerCustom.dart';
import 'package:transfer_bedapp/widgets/dropDownSelector.dart';

class PatientDetailForm extends StatefulWidget {
  const PatientDetailForm({super.key});

  @override
  State<PatientDetailForm> createState() => _PatientDetailFormState();
}

class _PatientDetailFormState extends State<PatientDetailForm> {
  TextEditingController nameController = TextEditingController();
  TextEditingController ageController = TextEditingController();
  TextEditingController contactController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController reasonController = TextEditingController();
  TextEditingController durationController = TextEditingController();
  TextEditingController roomController = TextEditingController();

  final String _selectedGender = '';
  String? selectedDoctor;
  String? _selectedWardtype;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const CustomDrawer(),
      appBar: CustomAppBar(title: "Details Form"),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Text(
                  "Personal Deatils",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                ),
              ],
            ),

            SizedBox(height: 20),

            //name
            TextfieldCustom(
              controller: nameController,
              labelTextInput: "Enter Your Name",
              prefixIcon: Icons.person_outlined,
              inputType: TextInputType.name,
              textCapitalization: TextCapitalization.words,
            ),

            //age
            TextfieldCustom(
              controller: ageController,
              labelTextInput: "Enter Your Age",
              prefixIcon: Icons.calendar_today,
              inputType: TextInputType.number,
              textCapitalization: TextCapitalization.words,
            ),

            //Select Gender Male
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.start,
            //   children: [
            //     const Text(
            //       "Select Gender",
            //       style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
            //     ),
            //   ],
            // ),
            // Radiobuttons(
            //   title: "Male",
            //   value: "Male",
            //   groupValue: _selectedGender,
            //   onChanged: (value) {
            //     setState(() {
            //       _selectedGender = value!;
            //     });
            //   },
            // ),

            // Radiobuttons(
            //   title: "Female",
            //   value: "Female",
            //   groupValue: _selectedGender,
            //   onChanged: (value) {
            //     setState(() {
            //       _selectedGender = value!;
            //     });
            //   },
            // ),

            //Conatct
            TextfieldCustom(
              controller: contactController,
              labelTextInput: "Contact Number",
              prefixIcon: Icons.perm_phone_msg_outlined,
              inputType: TextInputType.name,
              textCapitalization: TextCapitalization.words,
            ),

            //Alternate Conatct
            TextfieldCustom(
              controller: contactController,
              labelTextInput: "Alternate Contact Number",
              prefixIcon: Icons.perm_phone_msg_outlined,
              inputType: TextInputType.name,
              textCapitalization: TextCapitalization.words,
            ),

            // SizedBox(height: 10),

            // //Select Doctor
            // CustomDropdownTextField(
            //   label: "Select Doctor",
            //   value: selectedDoctor,
            //   items: ["Dr.Shinde", "Dr.Jagdale", "Dr.Hagvane", "Dr.payghale"],
            //   onChanged: (val) {
            //     setState(() {
            //       selectedDoctor = val;
            //     });
            //   },
            // ),
            SizedBox(height: 10),

            //Upload Hospital file
            FilePickerInput(
              label: 'Upload Hospital File:',
              onFileSelected: (file) {
                print('Selected file: ${file.name}');
              },
            ),

            //SizedBox(height: 10),
            SizedBox(height: 40),

            //Bed Transfer Details
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Text(
                  "Bed Transfer Details",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                ),
              ],
            ),
            SizedBox(height: 20),

            //Select Doctor
            // Ward Type Dropdown
            CustomDropdownTextField(
              label: "Select Ward Type",
              value: _selectedWardtype,
              items: [
                "General Ward",
                "Semi-Private Ward",
                "Private Ward",
                "ICU (Intensive Care Unit)",
              ],
              onChanged: (val) {
                setState(() {
                  _selectedWardtype = val;
                });
              },
            ),

            SizedBox(height: 10),

            //Room No/ Bed No
            TextfieldCustom(
              controller: roomController,
              labelTextInput: "Room No/ Bed No",
              prefixIcon: Icons.bed,
              inputType: TextInputType.number,
              textCapitalization: TextCapitalization.words,
            ),

            //Pick Date
            DatePickerField(
              label: 'Select Date',
              onDateSelected: (date) {
                print('Selected date: $date');
              },
            ),

            SizedBox(height: 10),

            //Expected Duration
            TextfieldCustom(
              controller: durationController,
              labelTextInput: "Expected Duration",
              prefixIcon: Icons.time_to_leave_outlined,
              inputType: TextInputType.number,
              textCapitalization: TextCapitalization.words,
            ),

            SizedBox(height: 50),

            //Submit Button
            CustomButton(
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
              width: 350,
              backgroundColor: Color(0xFF5E72EB),
              textColor: Colors.white,
              //icon: Icons.check,
            ),
          ],
        ),
      ),
    );
  }
}
