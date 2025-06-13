import 'package:flutter/material.dart';

class ExecutiveDetailsCard extends StatelessWidget {
  final String name;
  final String age;
  final String gender;
  final String contact1;
  final String contact2;
  final String qualification;
  final String joiningDate;
  final String salary;
  final String attended;
  final String confirmed;
  final String pending;
  final String rejected;

  const ExecutiveDetailsCard({
    super.key,
    required this.name,
    required this.age,
    required this.gender,
    required this.contact1,
    required this.contact2,
    required this.qualification,
    required this.joiningDate,
    required this.salary,
    required this.attended,
    required this.confirmed,
    required this.pending,
    required this.rejected,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      margin: const EdgeInsets.only(top: 10),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.blue),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Executive Details:",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 12),
          Text("Name : $name"),
          Text("Age: $age"),
          Text("Gender: $gender"),
          Text("Contact 1: $contact1"),
          Text("Contact 2: $contact2"),
          Text("Qualification: $qualification"),
          Text("Date Of Joining: $joiningDate"),
          Text("Salary: $salary"),
          Text("Requests Attended: $attended"),
          Text("Requests Confirmed: $confirmed"),
          Text("Pending Request: $pending"),
          Text("Rejected Request: $rejected"),
        ],
      ),
    );
  }
}
