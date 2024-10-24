import 'package:flutter/material.dart';
import '../utils/donut_tile.dart';

class DonutTab extends StatelessWidget {
  
  final void Function(String itemName, double itemPrice) addItemToCart;
  final List donutsOnSale = const [
    ["Ice Cream", 36.0, Colors.blue, "lib/images/icecream_donut.png"],
    ["Strawberry", 45.0, Colors.red, "lib/images/strawberry_donut.png"],
    ["Grape Ape", 84.0, Colors.purple, "lib/images/grape_donut.png"],
    ["Choco", 95.0, Colors.brown, "lib/images/chocolate_donut.png"],
     ["Ice Cream", 36.0, Colors.blue, "lib/images/icecream_donut.png"],
    ["Strawberry", 45.0, Colors.red, "lib/images/strawberry_donut.png"],
    ["Grape Ape", 84.0, Colors.purple, "lib/images/grape_donut.png"],
    ["Choco", 95.0, Colors.brown, "lib/images/chocolate_donut.png"],
  ];
  const DonutTab({super.key, required this.addItemToCart});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: donutsOnSale.length,
      padding: const EdgeInsets.all(12),

      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, childAspectRatio: 1 / 1.6),
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            final itemName = donutsOnSale[index][0];
            final itemPrice = donutsOnSale[index][1];
            // Call the addItemToCart function with the item's details
            addItemToCart(itemName, itemPrice);
          },
          child: DonutTile(
            donutFlavor: donutsOnSale[index][0],
            donutPrice: donutsOnSale[index][1].toString(),
            donutColor: donutsOnSale[index][2],
            imageName: donutsOnSale[index][3], onAddToCart: () {  },
          ),
        );
      },
    );
  }
}