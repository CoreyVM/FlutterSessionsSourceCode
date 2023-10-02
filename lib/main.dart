import "package:flutter/material.dart";
import "pages/homepage.dart";
import "pages/aboutme.dart";
import 'pages/Contact.dart';
import "pages/numberGen.dart";

void main() {
  runApp(const MyApp());
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
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (int index){
            setState(() {
              _currentIndex= index;
            });
          },
          items: [
        BottomNavigationBarItem(label: "Home", icon: Icon(Icons.home)),
        BottomNavigationBarItem(label: "ABC", icon: Icon(Icons.abc)),
      ]),
      body: IndexedStack(index: _currentIndex,
      children: pages),
    ));
  }
}
