import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'introduction.dart';  // Import the Introduction screen

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
      // After 3 seconds, navigate to Introduction screen
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
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          color: Colors.black, // Background color when the image is not fully loaded
        ),
        child: const Image(
          image: AssetImage("ss.png"),  // Your splash image
          fit: BoxFit.cover, // The image fills the screen
        ),
      ),
    );
  }
}
