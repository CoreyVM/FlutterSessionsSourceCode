import 'package:flutter/material.dart';
import 'package:flutter_app/components/baskettile.dart';
import 'package:flutter_app/components/producttile.dart';
import "../product.dart";
import "../components/basketprovider.dart";
import "package:provider/provider.dart";



class Basket extends StatefulWidget {
  const Basket({super.key});

  @override
  State<Basket> createState() => _BasketState();
}

class _BasketState extends State<Basket> {


  

  @override
  Widget build(BuildContext context) {
      final basketProvider = Provider.of<BasketProvider>(context);
      List<Product> baskedItems = basketProvider.basketItems;
    return Scaffold(
      
      appBar: AppBar(title: const Text("Basket"),centerTitle: true,),
      body: Column(
        children: [

          if (baskedItems.isEmpty)
              
              const Padding(
                padding: const EdgeInsets.only(top: 350),
                child: Center(child: Text("Try Adding Some Items",softWrap: true,
                style: TextStyle(fontSize: 35),)),
              )

          else
          Flexible(

            child: ListView.builder(
            
              itemCount: baskedItems.length,
              scrollDirection: Axis.vertical,
              itemBuilder: (context, index) {
              
               return BasketTile(
                product: baskedItems[index],callback: ReloadPage,);
            },
          )),
        ],
      ),
    );
  }

  void ReloadPage(){
    setState(() {  
    });
  }
}
