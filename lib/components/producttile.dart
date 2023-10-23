import 'package:flutter/material.dart';

import '../product.dart';


class ProductTile extends StatelessWidget {
  Product product;
  ProductTile({super.key, required this.product});
  
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 2),
      width: 150,
      height: 150,
      decoration: BoxDecoration(color: Colors.grey[100],
      borderRadius: BorderRadius.circular(12)),


//Update to use a Stack for this widget container as need children to go above each other
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => ProductDetailsPage(product: product))
          );
        },

        child: Stack(children: [ 
      
          Hero(tag: "product-image",child: Image.asset(product.imagePath)),
          //Picture
          Image.asset(product.imagePath,),
          
          //Descirption (Name)
          Positioned(child: Text(product.name,style: 
          TextStyle(color: Colors.white,fontSize: 18,
         shadows: <Shadow>[
              Shadow(
                color: Colors.black.withOpacity(0.8), // Shadow color and opacity
                offset: Offset(2, 2), // Offset of the shadow
                blurRadius: 5, // Spread of the shadow
              ),
         ])),
          top: 0,),
          
          //Price
          Positioned(child: Text(product.price,style: TextStyle(color: Colors.white,fontSize: 23,shadows: <Shadow>[
              Shadow(
                color: Colors.black.withOpacity(0.8), // Shadow color and opacity
                offset: Offset(2, 2), // Offset of the shadow
                blurRadius: 5, // Spread of the shadow
              ),]),),
          bottom: 10,
          left: 10),
      
      
      
      
          //Button to add to basket
          Positioned(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: FloatingActionButton(mini: true,
                onPressed: (){}, child: const Icon(Icons.add)
                ),
            ),
           right: 0,
           bottom: 0, ),
        ]),
      ),
    );
   }
}

// In your ProductDetailsPage:

class ProductDetailsPage extends StatelessWidget {
  final Product product;

  ProductDetailsPage({required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Product Details"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Add the Hero widget here with the same tag
          Hero(
            tag: "product-image",
            child: Image.asset(product.imagePath),
          ),

          //Name
           Text(product.name,textAlign: TextAlign.start,style: TextStyle(fontSize: 34),),

          //Price
           Text(product.price,textAlign: TextAlign.start,style: TextStyle(fontSize: 30),),

           //Description
           Text(product.description,textAlign: TextAlign.start,style: TextStyle(fontSize: 18),),


          // ... (rest of your product details)
        ],
        
      ),floatingActionButton: FloatingActionButton(onPressed: (){}, child: Icon(Icons.plus_one)),
    );
  }
}