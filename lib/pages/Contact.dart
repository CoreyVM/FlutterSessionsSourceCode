import 'package:flutter/material.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Center(
            child: Column(
                children: [
            Text("Contact me at corey.vmcallister@ncl-coll.ac.uk"),
            Icon(Icons.email),
                ],
              ),
          ),
        ));
  }
}
