import 'dart:async';
import 'package:flutter/material.dart';

class AdSplashPrompt extends StatefulWidget {
  final Widget nextScreen;
  final Widget content;
  final Duration duration;

  const AdSplashPrompt({
    super.key,
    required this.nextScreen,
    required this.content,
    this.duration = const Duration(seconds: 5),
  });

  @override
  State<AdSplashPrompt> createState() => _AdSplashPromptState();
}

class _AdSplashPromptState extends State<AdSplashPrompt> {
  @override
  void initState() {
    super.initState();
    Timer(widget.duration, () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => widget.nextScreen),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Wrap widget.content with Center + SizedBox to control size
          Center(
            child: SizedBox(
              width: 500, // your desired width
              height: 800, // your desired height
              child: widget.content,
            ),
          ),

          // Skip button at top-right
          Positioned(
            top: 40,
            right: 20,
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => widget.nextScreen),
                );
              },
              child: const Text("Skip"),
            ),
          ),
        ],
      ),
    );
  }
}
