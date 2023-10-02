import "package:flutter/material.dart";
import "pages/homepage.dart";
import "pages/aboutme.dart";
import 'pages/Contact.dart';
import "pages/numberGen.dart";

void main() {
  runApp(const Generator());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _currentIndex = 0;
  List<Widget> pages = [HomePage(), AboutMe()];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          body: Text("Hello wolrd"),
        
    ));
  }
}
