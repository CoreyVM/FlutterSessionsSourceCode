import 'package:flutter/material.dart';


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
      body: Center(child: Image.asset("lib/assets/images/basket.jpg"),),
    );
  }
}

/*The basket needs a ListView.builder with a list of widget tiles
 to render out everything in the basket if we want a visual rep
 of all items the user could buy
*/
