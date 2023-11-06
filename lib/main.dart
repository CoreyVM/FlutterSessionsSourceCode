import 'package:flutter/material.dart';
import "pages/home.dart";
import "pages/basket.dart";
import "pages/checkout.dart";
import "package:provider/provider.dart";
import './components/basketprovider.dart';



/*
    HERO Widget Popup Needs Optimised & Fixed as it causing errors on console 
    and is acting slow on parts of the program.
 
    ══╡ EXCEPTION CAUGHT BY SCHEDULER LIBRARY ╞═════════════════════════════════════════════════════════
    The following assertion was thrown during a scheduler callback:
    There are multiple heroes that share the same tag within a subtree.
    Within each subtree for which heroes are to be animated (i.e. a PageRoute subtree), each Hero must
    have a unique non-null tag.
    In this case, multiple heroes had the following tag: product-image
    ├# Here is the subtree for one of the offending heroes: Hero

    When the exception was thrown, this was the stack:
    dart-sdk/lib/_internal/js_dev_runtime/private/ddc_runtime/errors.dart 294:49      
*/



void main() {
  runApp(
  MultiProvider(providers:[
    ChangeNotifierProvider(create: (context) => BasketProvider()),
  ],
  child: MyApp(),));

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
                label: "Basket", 
                icon: Icon(Icons.shopping_basket)),
                  //Add here a Stack Icon with the count from our total items in Basket A
                  //  ->  https://stackoverflow.com/questions/45155104/displaying-notification-badge-on-bottomnavigationbars-icon

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
