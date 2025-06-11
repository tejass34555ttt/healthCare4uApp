import 'package:flutter/material.dart';
import 'confirm_reason.dart';

class SelectExecutivePage extends StatefulWidget {
  const SelectExecutivePage({super.key});

  @override
  State<SelectExecutivePage> createState() => _SelectExecutivePageState();
}

class _SelectExecutivePageState extends State<SelectExecutivePage> {
  String? selectedExecutive;
  String searchQuery = '';

  final List<String> executives = [
    'Rajesh Kumar',
    'Pooja Singh',
    'Amit Verma',
    'Sneha Patil',
    'Deepak Joshi',
    'Vikram Rana',
    'Ritika Sharma',
    'Karan Kapoor',
    'Sunil Pawar',
    'Divya Nair',
    'Rahul Chauhan',
    'Manoj Bhandari',
  ];

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    final filteredExecutives =
        executives.where((exec) {
          return exec.toLowerCase().contains(searchQuery.toLowerCase());
        }).toList();

    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        backgroundColor: const Color(0xFF5E72EB),
        title: const Text(
          'Select Executive',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.menu, color: Colors.white),
          onPressed: () {
            _scaffoldKey.currentState?.openDrawer();
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications, color: Colors.white),
            onPressed: () {},
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Text('Transfer Bed'),
            ),
            ListTile(title: const Text('Item 1'), onTap: () {}),
            ListTile(title: const Text('Item 2'), onTap: () {}),
          ],
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search executives...',
                // Removed middle toggle/icon; keeping only hintText
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
              onChanged: (value) {
                setState(() {
                  searchQuery = value;
                });
              },
            ),
          ),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              children: [
                const Text(
                  "Choose an Executive:",
                  style: TextStyle(fontSize: 18),
                ),
                const SizedBox(height: 20),
                ...filteredExecutives.map((exec) {
                  return RadioListTile<String>(
                    title: Text(exec),
                    value: exec,
                    groupValue: selectedExecutive,
                    onChanged: (value) {
                      setState(() {
                        selectedExecutive = value;
                      });
                    },
                  );
                }),
                const SizedBox(height: 30),
                Center(
                  child: ElevatedButton(
                    onPressed:
                        selectedExecutive == null
                            ? null
                            : () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder:
                                      (context) => ConfirmReasonPage(
                                        executiveName: selectedExecutive!,
                                      ),
                                ),
                              );
                            },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF5E72EB),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 40,
                        vertical: 14,
                      ),
                    ),
                    child: const Text(
                      "Confirm Selection",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: IconButton(
            icon: const Icon(
              Icons.arrow_back,
              color: Color(0xFF5E72EB),
              size: 30,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
      ),
    );
  }
}
