import "package:flutter/material.dart";


void main() {
  runApp(const MyApp());
}


class MyApp extends  StatelessWidget{
  const MyApp({super.key});

  @override
 Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: (AppBar(title: Text("My App"),)),
      body: Center(child: Text("Hello World!"))
    ));
  }
}



/* Variant with multiple widgets in body
class MyApp extends StatelessWidget {
  const MyApp2({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: (AppBar(title: Text("My App"),)),
      body: Center(
        child: Column(children: [
          const Text("Hello World"),
          Image.asset("/workspaces/FlutterTest/lib/Images/Dog.jpg",height:300,width:300)
        ],),
      )
    ));
  }
}
*/

/* Button With Text Inside
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("My App")),
        body: Center(
          child: ElevatedButton(child: Text("Press me!"), onPressed: (){print("Hello!");},),
        ),
      ),
    );
  }
}
*/
