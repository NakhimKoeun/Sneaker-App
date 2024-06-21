import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sneakershop/Data/Data.dart';
import 'package:sneakershop/models/card_model.dart';
import 'package:sneakershop/models/shoe.model.dart';
import 'package:sneakershop/widget/cart_item.dart';

class Cartscreen extends StatelessWidget {
  const Cartscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Consumer<Cart>(
      builder: (context, value, child) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          children: [
            Text(
              "My Cart",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
                child: ListView.builder(
                    itemCount: value.getUserCart().length,
                    itemBuilder: (context, index) {
                      //get shoe individual shoe

                      Shoe individual = value.getUserCart()[index];

                      //return the cart item

                      return CartItem(
                        shoe: individual,
                      );
                    }))
          ],
        ),
      ),
    ));
  }
}
