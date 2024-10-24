import 'package:flutter/material.dart';
import '../utils/pancake_tile.dart';

class Pancaketab extends StatelessWidget {
 final void Function(String itemName, double itemPrice) addItemToCart; // Add this line
  // List of pancakes
  final List pancakesOnSale = const [
    // [ pancakeName, pancakePrice, pancakeColor, imageName ]
    ["Cherry", 50.0, Colors.blue, "lib/images/pancake.png"],
    ["Strawberry", 70.0, Colors.red, "lib/images/pancake2.png"],
    ["Choco Cherry", 80.0, Colors.purple, "lib/images/pancake3.png"],
    ["Cherry", 90.0, Colors.brown, "lib/images/pancake4.png"],
    ["Pancake pack", 100.0, Colors.yellow, "lib/images/pancake5.png"],
    ["Chesse pancake", 115.0, Colors.green, "lib/images/pancake6.png"],
    ["pancake suprem ", 150.0, Colors.redAccent, "lib/images/pancake7.png"],
    ["pancake alfredo", 70.0, Colors.orange, "lib/images/pancake8.png"],
    ];

  const Pancaketab({super.key, required this.addItemToCart}); // Pass the function

  @override
  Widget build(BuildContext context) {
   return GridView.builder(
      itemCount: pancakesOnSale.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, childAspectRatio: 1 / 1.6),
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            final itemName = pancakesOnSale[index][0];
            final itemPrice = pancakesOnSale[index][1];
            // Call the addItemToCart function with the item's details
            addItemToCart(itemName, itemPrice);
          },
          child: PancakeTile(
            pancakeFlavor: pancakesOnSale[index][0],
            pancakePrice: pancakesOnSale[index][1].toString(), // Ensure it's a string
            pancakeColor: pancakesOnSale[index][2],
            imageName: pancakesOnSale[index][3],
          ),
        );
      },
    );
  }
  }