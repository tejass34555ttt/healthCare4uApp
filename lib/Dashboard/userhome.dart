import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:transfer_bedapp/HomeMedicalServices/homeModicalServices.dart';
import 'package:transfer_bedapp/Patients/Patient_Details.dart';
import 'package:transfer_bedapp/Patients/detailform.dart';
import 'package:transfer_bedapp/ambulance/addambulance.dart';
import 'package:transfer_bedapp/ambulance/book_Ambulance_Services.dart';
import 'package:transfer_bedapp/diagnostics/Add_Diagnostics.dart';
import 'package:transfer_bedapp/diagnostics/book_diagnostics.dart';
import 'package:transfer_bedapp/hospital/addhospital.dart';
import 'package:transfer_bedapp/widgets/Custom_User__card.dart';
import 'package:transfer_bedapp/widgets/appbar.dart';
import 'package:transfer_bedapp/widgets/drawerCustom.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size; // For responsive sizing

    return Scaffold(
      /* appBar: const CustomAppBar(title: 'Dashboard'),*/
      drawer: const CustomDrawer(),
      appBar: CustomAppBar(title: "Dashboard"),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              // 🖼️ Banner Image
              Container(
                width: 350,
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  image: DecorationImage(
                    image: AssetImage('assets/images/bablu.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TransferBedWidget(
                    buttonImagePath: 'assets/images/click.jpg',
                    buttonLabel: 'Transfer Bed',
                    buttonColor: const Color(0xFFCACAEB),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => AddPatientsForm(),
                        ),
                      );
                    },
                  ),

                  TransferBedWidget(
                    buttonImagePath: 'assets/images/diagnostic.png',
                    buttonLabel: 'diagnostic Services',
                    buttonColor: const Color(0xFFCACAEB),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => BookDiagnosticsServies(),
                        ),
                      );
                    },
                  ),
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TransferBedWidget(
                    buttonImagePath: 'assets/images/ambulance.png',
                    buttonLabel: 'Ambulance Services',
                    buttonColor: const Color(0xFFCACAEB),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const BookAmbulanceservices(),
                        ),
                      );
                    },
                  ),

                  TransferBedWidget(
                    buttonImagePath: 'assets/images/HomeMedical.png',
                    buttonLabel: 'Home Medical Services',
                    buttonColor: const Color(0xFFCACAEB),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeMedicalservices(),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),

      // 🌟 Speed Dial FAB
      floatingActionButton: SpeedDial(
        animatedIcon: AnimatedIcons.menu_close,

        children: [
          SpeedDialChild(
            child: const Icon(Icons.person_add),
            label: 'Add Hospital',
            backgroundColor: Colors.green,
            onTap: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Transfer Bed Clicked')),
              );

              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const AddHospitalForm(),
                ),
              );
            },
          ),
          SpeedDialChild(
            child: const Icon(Icons.bed),
            label: 'Add Ambulance',
            backgroundColor: Colors.orange,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AddAmbulanceForm()),
              );
            },
          ),
          SpeedDialChild(
            child: const Icon(Icons.call),
            label: 'Add Diagnostics Center',
            backgroundColor: Colors.purple,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AddDiagnosticsForm()),
              );
            },
          ),
        ],
      ),
    );
  }
}
