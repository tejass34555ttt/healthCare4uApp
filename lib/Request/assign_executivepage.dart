import 'package:flutter/material.dart';
import 'package:transfer_bedapp/Dashboard/dashboardexecutive.dart';
import 'package:transfer_bedapp/screens/Auth/verification.dart';
import 'package:transfer_bedapp/widgets/CustomSearch.dart';
import 'package:transfer_bedapp/widgets/addScreen.dart';

class AssignExecutiveDialogContent extends StatelessWidget {
  AssignExecutiveDialogContent({super.key});

  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.6,
        width: MediaQuery.of(context).size.width * 0.8,
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 255, 255, 255),
          borderRadius: BorderRadius.circular(16),
        ),
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            SearchBarWidget(
              controller: _searchController,
              hintText: 'Search Patient Name...',
              onChanged: (query) {
                print("User typed: $query");
                // Add filtering logic here
              },
            ),
            const SizedBox(height: 16),
            Expanded(
              child: ListView.builder(
                itemCount: 6,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: CircleAvatar(child: Text('${index + 1}')),
                    title: const Text('Dr. Natisha Kadbhane'),
                    trailing: ElevatedButton(
                      onPressed: () {
                        // Action here
                      },
                      child: const Text('Select'),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 12),
            Align(
              alignment: Alignment.center,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context); // Close dialog
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder:
                          (context) => AdSplashPrompt(
                            nextScreen: Dashboardexective(),
                            content: Center(child: successfulmsg()),
                          ),
                    ),
                  );
                },
                child: const Text('Assign Executive'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
