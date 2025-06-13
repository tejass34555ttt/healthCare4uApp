import 'package:flutter/material.dart';
import 'package:transfer_bedapp/Dashboard/userhome.dart';
import 'package:transfer_bedapp/HomeMedicalServices/homeModicalServices.dart';
import 'package:transfer_bedapp/Patients/Patient_Details.dart';
import 'package:transfer_bedapp/ambulance/addambulance.dart';
import 'package:transfer_bedapp/ambulance/book_Ambulance_Services.dart';
import 'package:transfer_bedapp/diagnostics/Add_Diagnostics.dart';
import 'package:transfer_bedapp/diagnostics/book_diagnostics.dart';
import 'package:transfer_bedapp/screens/Auth/login.dart';
import 'package:transfer_bedapp/success/successful.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      title: 'Bed Transformation App',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF5E72EB),
          centerTitle: true,
          iconTheme: IconThemeData(color: Colors.white),
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),

      home: Scaffold(body: LoginPage()), // renamed for clarity
    );
  }
}
