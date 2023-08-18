import 'package:flutter/material.dart';

class AboutMe extends StatefulWidget {
  const AboutMe({super.key});

  @override
  State<AboutMe> createState() => _AboutMeState();
}

class _AboutMeState extends State<AboutMe> {
  int counter = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("About Me"),
          backgroundColor: Colors.black,
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(58.0),
            child: Column(children: <Widget>[
              Text(counter.toString()),
              ElevatedButton(
                child: Text("+"),
                style: ElevatedButton.styleFrom(
                  primary: Colors.blue,
                  elevation: 10,
                ),
                onPressed: () {
                  setState(() {
                    counter += 1;
                  });
                },
              )
            ]),
          ),
        ));
  }
}
