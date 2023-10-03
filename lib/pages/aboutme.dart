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
            Image.asset("/workspaces/FlutterSessionsSourceCode/lib/Assets/Images/doge.jpg",height: 100, width: 100),
            Image.network("https://hips.hearstapps.com/hmg-prod/images/dog-puppy-on-garden-royalty-free-image-1586966191.jpg?crop=0.752xw:1.00xh;0.175xw,0&resize=1200:*"),
          ],
        ),
      ),
    );
  }
}

/* About Me Widget Updated With Local Image & Network Image
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
            Image.asset("/workspaces/FlutterSessionsSourceCode/lib/Assets/Images/doge.jpg",height: 100, width: 100),
            Image.network("https://hips.hearstapps.com/hmg-prod/images/dog-puppy-on-garden-royalty-free-image-1586966191.jpg?crop=0.752xw:1.00xh;0.175xw,0&resize=1200:*"),
          ],
        ),
      ),
    );
  }
}*/