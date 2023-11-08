import "package:flutter/material.dart";
import "home.dart";

void main() {
  runApp(MaterialApp(home: MyApp())); //MyApp
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController userControl = TextEditingController();
  TextEditingController passControl = TextEditingController();
  String statusMessage = "";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text("Home Page"),
              centerTitle: true,
            ),
            body: Column(children: [
              Padding(padding: EdgeInsets.only(top: 100)),

              //Username Field
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: TextFormField(
                    controller: userControl,
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(0),
                            borderSide: BorderSide(color: Colors.black)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(color: Colors.transparent)),
                     
                        focusColor: Colors.red,
                        filled: true,
                           fillColor: Color.fromARGB(255, 197, 8, 99),
                        labelText: "Username")),
              ),

              Padding(
                  padding: EdgeInsets.only(
                      top: 20)), //Padding For Space Between User & Pass Fields

              //Password Field
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: TextFormField(
                    controller: passControl,
                    obscureText: true,
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black)),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.red)),
                        fillColor: Colors.grey[200],
                        filled: true,
                        labelText: "Password")),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: ElevatedButton(
                    onPressed: () {
                      if (Login()) {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MyWidget()));
                      }
                    },
                    child: Text("Login")),
              ),
              Text(statusMessage),
            ])));
  }

  bool Login() {
    if (userControl.text == "Admin01" && passControl.text == "Pass123") {
      return true;
    } else {
      setState(() {
        statusMessage = "Wrong credentials";
      });
      return false;
    }
  }
}
