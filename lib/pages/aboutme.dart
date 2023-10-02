import 'package:flutter/material.dart';


//Bottom Nav Bar
class AboutMe extends StatefulWidget {
  const AboutMe({super.key});
  @override
  State<AboutMe> createState() => _AboutMeState();
}

//Bottom Nav Bar
class _AboutMeState extends State<AboutMe> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("About Me")),
      body: Center(
        child: Column(
          children: [
            Center(child: Text("My name is Corey Veitch-McAllister")),
            Center(child: Text("I am a Advanced Technical Lecturer")),
            Center(child: Text("I am 27 Years old")),
            Image.asset("/workspaces/FlutterTest/lib/Images/doge.jpg",
                height: 100, width: 100),
            Image.asset(
              "/workspaces/FlutterTest/lib/Images/Dog.jpg",
              height: 100,
              width: 100,
            )
          ],
        ),
      ),
    );
  }
}
