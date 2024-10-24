import 'package:flutter/material.dart';
import '../utils/burger_tile.dart';

class burgertab extends StatelessWidget {
 final void Function(String itemName, double itemPrice) addItemToCart; // Add this line
  // List of burgers
  final List burgersOnSale = const [
    // [ burgerName, burgerPrice, burgerColor, imageName 
    ["Classic", 99.0, Colors.blue, "lib/images/burger.png"],
    ["Whopper", 89.0, Colors.red, "lib/images/burger2.png"],
    ["Chesee", 125.0, Colors.purple, "lib/images/burger3.png"],
    ["Classic and chips", 100.0, Colors.brown, "lib/images/burger4.png"],
    ["Burger pack1", 130.0, Colors.yellow, "lib/images/burger5.png"],
    ["Burger pack2", 135.0, Colors.green, "lib/images/burger6.png"],
    ["burger suprem ", 150.0, Colors.redAccent, "lib/images/burger7.png"],
    ["burger alfredo", 70.0, Colors.orange, "lib/images/burger8.png"],
    ];

  const burgertab({super.key, required this.addItemToCart}); // Pass the function

  @override
  Widget build(BuildContext context) {
   return GridView.builder(
      itemCount: burgersOnSale.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, childAspectRatio: 1 / 1.6),
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            final itemName = burgersOnSale[index][0];
            final itemPrice = burgersOnSale[index][1];
            // Call the addItemToCart function with the item's details
            addItemToCart(itemName, itemPrice);
          },
          child: BurgerTile(
            burgerFlavor: burgersOnSale[index][0],
            burgerPrice: burgersOnSale[index][1].toString(), // Ensure it's a string
            burgerColor: burgersOnSale[index][2],
            imageName: burgersOnSale[index][3], onAddToCart: () {  }
          ),
        );
      },
    );
  }
  }