import "package:flutter/foundation.dart";
import "../product.dart";

class BasketProvider with ChangeNotifier{
  List<Product> basketItems = [];

  void AddItemToBasket(Product prd){
    basketItems.add(prd);
    notifyListeners();
    print(basketItems.length);
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
}
