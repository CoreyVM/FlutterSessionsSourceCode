import 'package:flutter/material.dart';
import "package:flutter_app/pages/aboutme.dart";

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("Home Page")),
      body: Center(child: Text("Welcome to the home page")),
    );
  }
}
