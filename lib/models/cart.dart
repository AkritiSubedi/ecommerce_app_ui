import 'package:ecommerce_app_ui/models/shoe.dart';
import 'package:flutter/material.dart';

class Cart extends ChangeNotifier {
  // list of shoes for sales
  List<Shoe> shoeShop = [
    Shoe(
        name: 'Zoom FREAK',
        price: '236',
        description: 'The forward-thinking design of latest signature shoe',
        imagePath: 'lib/images/image1.jpeg'),
    Shoe(
        name: 'Nike',
        price: '259',
        description: 'You\'ve got the hops and speed-lace up in shoes',
        imagePath: 'lib/images/image4.jpeg'),
    Shoe(
        name: 'Converse',
        price: '236',
        description:
            'A secure midfoot strap is suited for scoring brings and defensive shoe',
        imagePath: 'lib/images/image3.jpeg')
  ];
  // list of item in user cart
  List<Shoe> userCart = [];

  //get list of shoes for sale
  List<Shoe> getShoeList() {
    return shoeShop;
  }

  //get cart
  List<Shoe> getUserCart() {
    return userCart;
  }

  // add items to cart
  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  // remove item form cart
  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
