import 'package:flutter/material.dart';
import 'package:transfer_bedapp/Dashboard/dashboardadmin.dart';
import 'package:transfer_bedapp/screens/Auth/verification.dart';
import 'package:transfer_bedapp/widgets/CustomSearch.dart';
import 'package:transfer_bedapp/widgets/addScreen.dart';

class AssignExecutiveDialogContent extends StatefulWidget {
  const AssignExecutiveDialogContent({super.key});

  @override
  State<AssignExecutiveDialogContent> createState() =>
      _AssignExecutiveDialogContentState();
}

class _AssignExecutiveDialogContentState
    extends State<AssignExecutiveDialogContent> {
  final TextEditingController _searchController = TextEditingController();
  int? selectedIndex;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.6,
        width: MediaQuery.of(context).size.width * 0.8,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
        ),
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            SearchBarWidget(
              controller: _searchController,
              hintText: 'Search Executive Name...',
              onChanged: (query) {
                // Filtering logic (optional)
              },
            ),
            const SizedBox(height: 16),

            // Executive List
            Expanded(
              child: ListView.builder(
                itemCount: 6,
                itemBuilder: (context, index) {
                  bool isSelected = selectedIndex == index;

                  return ListTile(
                    leading: CircleAvatar(child: Text('${index + 1}')),
                    title: const Text('Natisha Kadbhane'),
                    trailing: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: isSelected ? Colors.green : null,
                      ),
                      onPressed: () {
                        setState(() {
                          selectedIndex = index;
                        });
                      },
                      child: Text(isSelected ? 'Selected' : 'Select'),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 12),

            // Assign Executive Button
            Align(
              alignment: Alignment.center,
              child: ElevatedButton(
                onPressed:
                    selectedIndex != null
                        ? () {
                          Navigator.pop(context); // Close dialog
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder:
                                  (context) => AdSplashPrompt(
                                    nextScreen: DashboardScreenAdmin(),
                                    content: Center(child: successfulmsg()),
                                  ),
                            ),
                          );
                        }
                        : null, // Disabled if no executive is selected
                child: const Text('Assign Executive'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
