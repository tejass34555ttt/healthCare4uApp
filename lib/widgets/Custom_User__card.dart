import 'package:flutter/material.dart';

class TransferBedWidget extends StatelessWidget {
  final String buttonImagePath;
  final String buttonLabel;
  final Color buttonColor;
  final VoidCallback onPressed;

  const TransferBedWidget({
    super.key,
    required this.buttonImagePath,
    required this.buttonLabel,
    required this.buttonColor,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Column(
      children: [
        const SizedBox(height: 20),

        // 🔳 Square Button
        Center(
          child: SizedBox(
            width: size.width * 0.3,
            height: size.width * 0.3,
            child: ElevatedButton(
              onPressed: onPressed,
              style: ElevatedButton.styleFrom(
                backgroundColor: buttonColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(buttonImagePath, width: 50, height: 50),
                  const SizedBox(height: 10),
                  Text(
                    buttonLabel,
                    style: const TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
