import 'package:flutter/material.dart';

class ConfirmReasonPage extends StatefulWidget {
  final String executiveName;

  const ConfirmReasonPage({super.key, required this.executiveName});

  @override
  State<ConfirmReasonPage> createState() => _ConfirmReasonPageState();
}

class _ConfirmReasonPageState extends State<ConfirmReasonPage> {
  final TextEditingController reasonController = TextEditingController();

  void rejectTransformation() {
    String reason = reasonController.text.trim();
    if (reason.isEmpty) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(const SnackBar(content: Text('Please enter a reason')));
      return;
    }

    showDialog(
      context: context,
      builder:
          (_) => AlertDialog(
            title: const Text('Transformation Rejected'),
            content: Text(
              'Executive: ${widget.executiveName}\nReason: $reason',
            ),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: const Text('OK'),
              ),
            ],
          ),
    );
  }

  void assignConfirmed() {
    showDialog(
      context: context,
      builder:
          (_) => AlertDialog(
            title: const Text('Executive Assigned'),
            content: Text(
              'Executive ${widget.executiveName} has been assigned.',
            ),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: const Text('OK'),
              ),
            ],
          ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Confirm & Reason'),
        centerTitle: true,
        backgroundColor: const Color(0xFF5E72EB),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back), // Back button
          onPressed: () {
            Navigator.pop(context); // Goes back to previous screen
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.menu), // Toggle / Drawer menu
            onPressed: () {
              // Handle drawer or toggle here
            },
          ),
          IconButton(
            icon: const Icon(Icons.notifications), // Notification icon
            onPressed: () {
              // Notification logic
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Executive: ${widget.executiveName}",
              style: const TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 20),
            const Text("Enter Reason:", style: TextStyle(fontSize: 16)),
            const SizedBox(height: 10),
            TextField(
              controller: reasonController,
              maxLines: 4,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Write reason for rejection",
              ),
            ),
            const SizedBox(height: 30),
            Center(
              child: Column(
                children: [
                  ElevatedButton(
                    onPressed: assignConfirmed,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF5E72EB),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 40,
                        vertical: 14,
                      ),
                    ),
                    child: const Text(
                      "Assign",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: rejectTransformation,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 40,
                        vertical: 14,
                      ),
                    ),
                    child: const Text(
                      "Reject",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
