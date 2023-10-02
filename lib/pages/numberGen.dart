import 'package:flutter/material.dart';
import 'dart:math';

String GetRandomNumber() {
  Random rand = Random();
  int randomNumber = rand.nextInt(100);
  return randomNumber.toString();
}

class Generator extends StatelessWidget {
  const Generator({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(
          appBar: AppBar(title: const Text("Random Number Generator")),
          body: Center(child: Text(GetRandomNumber()))),
    );
  }
}
