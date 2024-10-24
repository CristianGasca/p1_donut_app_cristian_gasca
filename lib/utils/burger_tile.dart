import 'package:flutter/material.dart';

class BurgerTile extends StatelessWidget {
  
  final String burgerFlavor;
  final String burgerPrice;
  final dynamic burgerColor; //dybamic pq sera de tipo color 
  final String imageName;

  const BurgerTile({super.key, required this.burgerFlavor, required this.burgerPrice, this.burgerColor, required this.imageName, required Null Function() onAddToCart});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(decoration: BoxDecoration(color: burgerColor[100], borderRadius: BorderRadius.circular(24)),
      
      child: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [Container(
          decoration: BoxDecoration(color: burgerColor[50], borderRadius: const BorderRadius.only(topRight: Radius.circular(24), bottomLeft: Radius.circular(24))),
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 18),
          child: Text('\$$burgerPrice', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: burgerColor[800])),
        )],),
        //burger picture 
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
          child: Image.asset(imageName),
        ),

        //burger flavor text
        Text(burgerFlavor, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),

        // texto
        Text('Burger king', style: TextStyle(color: Colors.grey[600]),),
        //love icon + add button

        Padding(
          padding: const EdgeInsets.all(12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //love icon
              Icon(Icons.favorite, color: Colors.pink[400]),
              Icon(Icons.add, color: Colors.grey[800],)
            ],
          ),
        )


      ],),

      ),
    );
  }
}