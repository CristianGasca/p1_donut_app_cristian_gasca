import 'package:flutter/material.dart';
import '../utils/pizza_tile.dart';

class Pizzatab extends StatelessWidget {
 final void Function(String itemName, double itemPrice) addItemToCart; // Add this line
  // List of pizzas
  final List pizzasOnSale = const [
    // [ pizzaName, pizzaPrice, pizzaColor, imageName ]
    ["Vegetarian", 100.0, Colors.blue, "lib/images/pizza1.png"],
    ["Pepperoni", 120.0, Colors.red, "lib/images/pizza2.png"],
    ["Mushroomsroni", 125.0, Colors.purple, "lib/images/pizza3.png"],
    ["Classic", 110.0, Colors.brown, "lib/images/pizza4.png"],
    ["Chilipapers", 130.0, Colors.yellow, "lib/images/pizza5.png"],
    ["Chesse pizza", 135.0, Colors.green, "lib/images/pizza6.png"],
    ["pizza suprem ", 150.0, Colors.redAccent, "lib/images/pizza7.png"],
    ["pizza alfredo", 170.0, Colors.orange, "lib/images/pizza8.png"],
    ];

  const Pizzatab({super.key, required this.addItemToCart}); // Pass the function

  @override
  Widget build(BuildContext context) {
   return GridView.builder(
      itemCount: pizzasOnSale.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, childAspectRatio: 1 / 1.6),
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            final itemName = pizzasOnSale[index][0];
            final itemPrice = pizzasOnSale[index][1];
            // Call the addItemToCart function with the item's details
            addItemToCart(itemName, itemPrice);
          },
          child: PizzaTile(
            pizzaFlavor: pizzasOnSale[index][0],
            pizzaPrice: pizzasOnSale[index][1].toString(), // Ensure it's a string
            pizzaColor: pizzasOnSale[index][2],
            imageName: pizzasOnSale[index][3],
          ),
        );
      },
    );
  }
  }