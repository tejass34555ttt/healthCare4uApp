import 'package:flutter/material.dart';

class DashboardCard extends StatelessWidget {
  final String title;
  final int? count;
  final double fontSize;
  final String imagePath; // Image asset path
  final Color backgroundColor;
  final VoidCallback onTap;

  const DashboardCard({
    super.key,
    required this.title,
    this.count,
    required this.fontSize,
    required this.imagePath,
    required this.backgroundColor,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        color: backgroundColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  imagePath,
                  width: 40,
                  height: 40,
                  fit: BoxFit.contain,
                ),
                const SizedBox(height: 10),
                if (count != null)
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8,
                      vertical: 4,
                    ),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 205, 203, 203),
                      borderRadius: BorderRadius.circular(
                        13,
                      ), // makes it curved
                    ),
                    child: Text(
                      count.toString(),
                      style: const TextStyle(
                        fontSize: 16,
                        color: Color.fromARGB(246, 0, 0, 0),
                      ),
                    ),
                  ),

                const SizedBox(height: 10),
                Text(
                  title,
                  style: TextStyle(
                    fontSize: fontSize,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
