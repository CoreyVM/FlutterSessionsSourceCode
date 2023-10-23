import "product.dart";


//This is where we get our list of products to load on screen
List<Product> GetProductList(){
   List<Product> products = [
     Product(name: "Golden Labrador", price: "£240", imagePath: "lib/assets/images/dog.jpg", description: "The Golden Labrador is a large friendly dog, full of energy, and always wanting to be part of the action. Highly intelligent, they are easier than most dogs to train as they are so willing to please. They enjoy being inside with the family and will be devoted to you. While alert enough to be a good watchdog, the instinct to befriend everyone rules them out for this express purpose"),
     Product(name: "Big Huel", price: "£220", imagePath: "lib/assets/images/money.jpeg", description: "It's all about the money - Ghandi"),
     Product(name: "Doge", price: "£0.99p", imagePath: "lib/assets/images/doge.jpg", description: "Bit cringe but that is what i am"),
     Product(name: "Tesco Trolley", price: "£999.99", imagePath: "lib/assets/images/basket.jpg", description: "Doing lines and doing nines"),
   ];

   return products;

}
