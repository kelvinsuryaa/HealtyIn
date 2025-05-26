import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'introduction.dart'; // Import the Introduction screen

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);

    Future.delayed(const Duration(seconds: 2), () {
      // After 2 seconds, navigate to Introduction screen
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const Introduction()),
      );
    });
  }

  @override
  void dispose() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: SystemUiOverlay.values);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background image
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("BGH.png"), // Your background image
                fit: BoxFit.cover, // The image fills the screen
              ),
            ),
          ),
          // Logo at the center
          Center(
            child: Image.asset(
              "HLOGO.png", // Your logo image
              width: 350, // Adjust logo size
              height: 350,
            ),
          ),
        ],
      ),
    );
  }
}
