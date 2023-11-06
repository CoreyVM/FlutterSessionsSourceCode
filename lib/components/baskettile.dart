import "package:flutter/material.dart";
import "../product.dart";
import 'package:provider/provider.dart';
import "../components/basketprovider.dart";
import '../pages/basket.dart';



class BasketTile extends StatelessWidget {
  BasketTile({super.key, required this.product, required this.callback});
  Product product;
  final callback;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListTile(
          leading: Image.asset(product.imagePath),
          title: Text(product.description),
          trailing: FloatingActionButton(onPressed: (){
            var basketProvider = Provider.of<BasketProvider>(context, listen: false);
        basketProvider.RemoveItemFromBasket(product);
      callback();
          }
          ,child: Icon(Icons.remove),)
          
        ),
    );
  }
  void RefreshBasketPage(){
        
  }
}

/*
class BasketTile extends StatelessWidget {
  BasketTile({super.key, required this.product, required this.callback});
  Product product;
  final callback;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 150,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black, width: 1.0), // Add border here
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          //Name + Price
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text(product.name, style: TextStyle(fontSize: 19)),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 16.0),
                child: Text(product.price, style: TextStyle(fontSize: 19)),
              ),
            ],
          ),

          //Picture + Description
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(product.imagePath, height: 100, width: 100),
              ),
              Container(
                width: 200,
                height: 100,
                child: Text(product.description, softWrap: true),
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: FloatingActionButton(
                  onPressed: () { //Remove Tile From Basket List
                     var basketProvider = Provider.of<BasketProvider>(context, listen: false);
        basketProvider.RemoveItemFromBasket(this.product);
      callback();
      
                  },
                  child: Icon(Icons.remove),
                  mini: true,
                  foregroundColor: Colors.red,
                ),
              )
            ],
          ),
        ]
      ));
  }
  void RefreshBasketPage(){
        
  }
}
*/
