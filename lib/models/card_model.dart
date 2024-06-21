import 'package:flutter/material.dart';
import 'package:sneakershop/Data/Data.dart';

import 'shoe.model.dart';

class Cart extends ChangeNotifier {
//list of shoe for sale

//list of item in user cart
  List<Shoe> userCart = [];
//get list of shoe for sale
  List<Shoe> getShoeList() {
    return shoeShop;
  }

//get cart
  List<Shoe> getUserCart() {
    return userCart;
  }

//add item to cart
  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

//remove item from cart
  void removeItemFromeCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
