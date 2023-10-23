import 'package:flutter/material.dart';
import "pages/home.dart";
import "pages/basket.dart";
import "pages/checkout.dart";
import "package:provider/provider.dart";
import './components/basketprovider.dart';

void main() {
  runApp(
  MultiProvider(providers:[
    ChangeNotifierProvider(create: (context) => BasketProvider()),
  ],
  child: MyApp(),));
 // runApp(const MyApp());
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
      debugShowCheckedModeBanner: false,
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
