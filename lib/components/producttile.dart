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


      child: Column(children: [
        //Picture
        Image.asset(product.imagePath,width: 150,height: 150,),
        //Descirption
        Text(product.description),
        //Price + Dertai
        Text(product.price),

        //Button to add to basket
        FloatingActionButton(onPressed: (){}, child: const Icon(Icons.add)),
      ]),
    );
   }
}