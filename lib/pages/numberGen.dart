import 'package:flutter/material.dart';
import 'dart:math';

String GetRandomNumber() {
  Random rand = new Random();
  int randomNumber = rand.nextInt(100);
  return randomNumber.toString();
}

class Generator extends StatelessWidget {
  const Generator({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Random Number Generator")),
        body: Center(child: Text(GetRandomNumber())));
  }
}

