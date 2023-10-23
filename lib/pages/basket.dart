import 'package:flutter/material.dart';
import 'package:flutter_app/components/producttile.dart';
import "../product.dart";



/*Very WIP need to refactor alot of things
 Such as the ListView needs a more modular approach
 such as using a list of added items. 
 Then need to make BaskedTile class to make the list view
 in a basket like manner.
*/
class Basket extends StatefulWidget {
  const Basket({super.key});

  @override
  State<Basket> createState() => _BasketState();
}

class _BasketState extends State<Basket> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Basket"),centerTitle: true,),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 4,
              scrollDirection: Axis.vertical,
              itemBuilder: (context, index) {
              
               Product prd = Product(name: "Cozza",description: "asdsad",imagePath: "lib/assets/images/Dog.jpg",price: "123");
               return ProductTile(
                product: prd
              );
            },),
          ),
        ],
      ),
    );
  }
}

/*The basket needs a ListView.builder with a list of widget tiles
 to render out everything in the basket if we want a visual rep
 of all items the user could buy
*/
