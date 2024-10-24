import 'package:flutter/material.dart';
import '../utils/smoothie_tile.dart';

class Smoothietab extends StatelessWidget {
 final void Function(String itemName, double itemPrice) addItemToCart; // Add this line
  // List of smoothies
  final List smoothiesOnSale = const [
    // [ smoothieName, smoothiePrice, smoothieColor, imageName ]
   // [ smoothieName, smoothiePrice, smoothieColor, imageName ]
    ["Guava", 50.0, Colors.blue, "lib/images/smoothie.png"],
    ["Lemon", 80.0, Colors.red, "lib/images/smoothie2.png"],
    ["Handle", 55.0, Colors.purple, "lib/images/smoothie3.png"],
    ["Orange", 600.0, Colors.brown, "lib/images/smoothie4.png"],
    ["Pineapple", 30.0, Colors.yellow, "lib/images/smoothie5.png"],
    ["Watermelon", 35.0, Colors.green, "lib/images/smoothie6.png"],
    ["Grape ", 50.0, Colors.redAccent, "lib/images/smoothie7.png"],
    ["Carrot", 70.0, Colors.orange, "lib/images/smoothie8.png"],
    ];
  const Smoothietab({super.key, required this.addItemToCart}); // Pass the function

  @override
  Widget build(BuildContext context) {
   return GridView.builder(
      itemCount: smoothiesOnSale.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, childAspectRatio: 1 / 1.6),
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            final itemName = smoothiesOnSale[index][0];
            final itemPrice = smoothiesOnSale[index][1];
            // Call the addItemToCart function with the item's details
            addItemToCart(itemName, itemPrice);
          },
          child: SmoothieTile(
            smoothieFlavor: smoothiesOnSale[index][0],
            smoothiePrice: smoothiesOnSale[index][1].toString(), // Ensure it's a string
            smoothieColor: smoothiesOnSale[index][2],
            imageName: smoothiesOnSale[index][3], onAddToCart: () {  }
          ),
        );
      },
    );
  }
  }