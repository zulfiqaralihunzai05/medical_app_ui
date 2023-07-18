import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:medical_app_ui/screens/WelcomeScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown
    ]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

      ),
      home: WelcomeScreen(),
    );
  }
}
