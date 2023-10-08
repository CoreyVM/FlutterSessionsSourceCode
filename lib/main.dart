import "package:flutter/material.dart";
import 'package:audioplayers/audioplayers.dart';


void main() {
  runApp(const MyApp()); //MyApp
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home:Scaffold(
      appBar: AppBar(title: Text("Home Page"), centerTitle: true,),
      body: Text("Hello World"),
    ));
  }
}