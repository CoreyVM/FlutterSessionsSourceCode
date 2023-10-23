import 'package:flutter/material.dart';
import 'package:flutter_app/components/producttile.dart';
import 'package:flutter_app/product.dart';
import "../products.dart";

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _MyAppState();
}

class _MyAppState extends State<HomePage> {
    
    List<Product> productList = GetProductList();
    List<Product> baskedItems = List.empty();
   @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        appBar: AppBar(
          title: const Text("Nike"),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Search Bar
              const Padding(
                padding:  EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    hintText: "Search",
                  ),
                ),
              ),
              // New Text
             const Padding(
                padding:  EdgeInsets.all(8),
                child: Text("New", style: TextStyle(fontSize: 22)),
              ),
              
              // New Items Section
              SizedBox(
                height: 150,
                width: MediaQuery.of(context).size.width,
                child: ListView.builder(
                  itemCount: GetProductList().length,
                  //Temp remove this later!!!
                  
                  scrollDirection: Axis.horizontal,   
                  itemBuilder: ((context, index) {
                    return ProductTile(product: productList[index],);
                      
                  }
                )
                ),
              ),
              
              SizedBox(height: 150,),








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
             const Padding(
                padding:  EdgeInsets.all(8.0),
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
              const Text("On Sale", style: TextStyle(fontSize: 24)),
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
            ],
          ),
        ),
    );
  }

  }
