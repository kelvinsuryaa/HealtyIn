import 'package:flutter/material.dart';
import 'package:project_akhir/screen/splash.dart';

void main() {
  runApp(const Main());
}

class Main extends StatelessWidget {
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(),
      home: Splash(),
      debugShowCheckedModeBanner: false,
    );
  }
}
