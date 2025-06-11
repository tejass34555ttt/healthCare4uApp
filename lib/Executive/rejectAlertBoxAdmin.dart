import 'package:flutter/material.dart';
import 'package:transfer_bedapp/Dashboard/dashboardadmin.dart';
import 'package:transfer_bedapp/widgets/CustomButton.dart';

class AdminAlertRejectBox extends StatelessWidget {
  AdminAlertRejectBox({super.key});

  final TextEditingController _descriptionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.4,
        width: MediaQuery.of(context).size.width * 0.8,
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 255, 255, 255),
          borderRadius: BorderRadius.circular(16),
        ),
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Reason :",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
            ),
            SizedBox(height: 10),
            TextField(
              controller: _descriptionController,
              maxLines: 6,
              decoration: InputDecoration(
                hintText: 'Enter description...',
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(
                    color: Colors.black, // Border color
                    width: 1.5, // Border width
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  // When not focused
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(
                    color:
                        Colors.grey, // Gray border when enabled but not focused
                    width: 1.5,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  // When focused
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(
                    color: Colors.blue, // Blue border on focus
                    width: 2,
                  ),
                ),
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 8,
                ),
              ),
            ),
            SizedBox(height: 10),

            Center(
              child: CustomButton(
                text: "Reject Transfer",
                onPressed: () {
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DashboardScreenAdmin(),
                    ),
                  );
                },
                width: 350,
                backgroundColor: Color.fromARGB(255, 235, 94, 99),
                textColor: Colors.white,
                //icon: Icons.check,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
