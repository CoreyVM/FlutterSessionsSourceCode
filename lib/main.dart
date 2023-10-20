import 'package:flutter/material.dart';
import "pages/home.dart";
import "pages/basket.dart";
import "pages/checkout.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _selectedIndex = 0;
  List<Widget> _pages = <Widget> [HomePage(),Basket(), Checkout()];

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        body: _pages.elementAt(_selectedIndex),
        
          bottomNavigationBar: BottomNavigationBar(
              currentIndex: _selectedIndex,
              backgroundColor: Colors.white,
              selectedItemColor: Colors.red,
              unselectedItemColor: Colors.black,
              onTap: _BottomBarTapped,
              items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(label: "Store", icon: Icon(Icons.home)),
            BottomNavigationBarItem(
                label: "Basket", icon: Icon(Icons.shopping_basket)),
            BottomNavigationBarItem(
                label: "Checkout", icon: Icon(Icons.payment)),
          ])),
    );
  }

  void _BottomBarTapped(int value) {
    setState(() {
      _selectedIndex = value;
    });
  }
}

//Before Extracted Widgets For Readability
/*
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Nike"),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Search Bar
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    hintText: "Search",
                  ),
                ),
              ),
              // Categories
              Padding(
                padding: const EdgeInsets.all(8),
                child: Text("Categories", style: TextStyle(fontSize: 22)),
              ),
              // Categories Row
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(height: 100, width: 100, color: Colors.red),
                  Container(height: 100, width: 100, color: Colors.blue),
                  Container(height: 100, width: 100, color: Colors.green),
                ],
              ),
              // Popular
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Popular", style: TextStyle(fontSize: 22)),
              ),
              // Popular Row
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(height: 100, width: 100, color: Colors.orange),
                  Container(height: 100, width: 100, color: Colors.black),
                  Container(height: 100, width: 100, color: Colors.yellow),
                ],
              ),
              // On Demand
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Text(
                    "On Demand",
                    style: TextStyle(fontSize: 22, decoration: TextDecoration.underline),
                  ),
                ),
              ),
              // On Demand Row
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(height: 150, width: 150, color: Colors.orange),
                  Container(height: 150, width: 150, color: Colors.orange),
                ],
              ),
              Text("On Sale", style: TextStyle(fontSize: 24)),
              Container(
                height: 80,
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(height: 80, width: 80, color: Colors.red),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(height: 80, width: 80, color: Colors.blue),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(height: 80, width: 80, color: Colors.green),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(height: 80, width: 80, color: Colors.orange),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(height: 80, width: 80, color: Colors.yellow),
                    ),

                  ],
                ),
              ),
              Text("Rip"),
            ],
          ),
        ),
      ),
    );
  }
}
*/
