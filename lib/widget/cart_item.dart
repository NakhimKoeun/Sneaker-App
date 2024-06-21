import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sneakershop/Data/Data.dart';
import 'package:sneakershop/models/card_model.dart';
import 'package:sneakershop/models/shoe.model.dart';

class CartItem extends StatefulWidget {
  Shoe shoe;
  CartItem({super.key, required this.shoe});

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  //remove item from cart
  void removeItemFromeCart() {
    Provider.of<Cart>(context, listen: false).removeItemFromeCart(widget.shoe);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
          color: Colors.grey[100], borderRadius: BorderRadius.circular(8)),
      child: ListTile(
          leading: Image.network(widget.shoe.Image),
          title: Text(widget.shoe.name),
          subtitle: Text(widget.shoe.price),
          trailing: IconButton(
              icon: Icon(Icons.delete), onPressed: removeItemFromeCart)),
    );
  }
}
