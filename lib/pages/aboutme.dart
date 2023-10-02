import 'package:flutter/material.dart';

class AboutMe extends StatefulWidget {
  const AboutMe({super.key});
  @override
  State<AboutMe> createState() => _AboutMeState();
}

class _AboutMeState extends State<AboutMe> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Center(child: Text("My name is Corey Veitch-McAllister")),
            Center(child: Text("I am a Advanced Technical Lecturer")),
            Center(child: Text("I am 27 Years old")),
            Image.asset("/workspaces/FlutterTest/lib/Assetts/Images/doge.jpg",
                height: 100, width: 100),
            Image.asset(
              "/workspaces/FlutterTest/lib/Assetts/Images/Dog.jpg",
              height: 100,
              width: 100,
            )
          ],
        ),
      ),
    );
  }
}
