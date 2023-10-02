import 'package:flutter/material.dart';
import 'dart:math';

int GetRandomNumber() {
  Random rand = Random();
  int randomNumber = rand.nextInt(100);
  return randomNumber;
}

class Generator extends StatefulWidget {
  const Generator({super.key});

  @override
  State<Generator> createState() => _GeneratorState();
}


// Final Task Solution For Random Num Gen With Button
class _GeneratorState extends State<Generator> {
  int random_number = 0;

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("Random Number Generator "),
        ),
        body: Center(
          child: Column(children: [
            ElevatedButton(onPressed: (){
              setState(() {
              random_number = GetRandomNumber();
            });
            }, 
              child: const Text("Hello World")),
              Text(random_number.toString())
        
          ]),
        ),
      )
    );
  }
}



/* Stateless Version of Random Number Generator
class Generator extends StatelessWidget {
  const Generator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home:Scaffold(
        appBar: AppBar(title: const Text("Random Number Generator")),
        body: Center(child: Text(GetRandomNumber().toString()))));
  }
}
*/
