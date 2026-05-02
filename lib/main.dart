//import 'package:ergosense/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:ergosense/screens/login.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: const Color.fromARGB(255, 236, 195, 224),
      ),
      //home: const HomePage(),
      home: const LogInPage(),
    );
  }
}

