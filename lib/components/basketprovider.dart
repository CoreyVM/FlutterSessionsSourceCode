import "package:flutter/foundation.dart";
import "../product.dart";

class BasketProvider with ChangeNotifier{
  List<Product> basketItems = [];

  void AddItemToBasket(Product prd){
    basketItems.add(prd);
    notifyListeners();
  }

  void RemoveItemFromBasket(Product prd){
    if (prd == null){
        return;
    }
    else{ 
    int indexToRemove = basketItems.indexOf(prd); 
    basketItems.removeAt(indexToRemove);
    }
  }

  String GetBasketSum(){
    int total = 0;
    for (int i = 0; i < basketItems.length; i++){
     total += int.parse(basketItems[i].price);
    }
    return total.toString();
  }
}
