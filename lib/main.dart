import "package:flutter/material.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Nike"),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
           child: Column(
              children: [
                
                // Search Bar
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.search),
                        hintText: "Search",
                      ),
                    ),
                  ),
                ),
                // Categories
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: Text("Categories", style: TextStyle(fontSize: 22)),
                  ),
                ),
                // Categories Row
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(height: 100, width: 100, color: Colors.red),
                      Container(height: 100, width: 100, color: Colors.blue),
                      Container(height: 100, width: 100, color: Colors.green),
                    ],
                  ),
                ),
                // Popular
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Popular", style: TextStyle(fontSize: 22)),
                  ),
                ),
                // Popular Row
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(height: 100, width: 100, color: Colors.orange),
                      Container(height: 100, width: 100, color: Colors.black),
                      Container(height: 100, width: 100, color: Colors.yellow),
                    ],
                  ),
                ),
                // On Demand
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                      child: Text(
                        "On Demand",
                        style: TextStyle(fontSize: 22, decoration: TextDecoration.underline),
                      ),
                    ),
                  ),
                ),
                // On Demand Row
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(height: 150, width: 150, color: Colors.orange),
                      Container(height: 150, width: 150, color: Colors.orange),
                    ],
                  ),
                ),
                Text("On Sale", style: TextStyle(fontSize: 24)),
                // Wrap widget to wrap the Containers
                // ...
                Expanded(child: Text("On Sale", style: TextStyle(fontSize: 24))),
                Expanded(
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      Container(height: 80, width: 80, color: Colors.red),
                      Container(height: 80, width: 80, color: Colors.yellow),
                      Container(height: 80, width: 80, color: Colors.blue),
                      Container(height: 80, width: 80, color: Colors.blue),
                      Container(height: 80, width: 80, color: Colors.blue),
                      Container(height: 80, width: 80, color: Colors.blue),
                      Container(height: 80, width: 80, color: Colors.blue),
                      Container(height: 80, width: 80, color: Colors.yellow),
                      Container(height: 80, width: 80, color: Colors.green),
                    ],
                  ),
                ),
            //   Add some space at the end to allow scrolling
              ],
            ),
          ),

        ),
      );
  }
}
