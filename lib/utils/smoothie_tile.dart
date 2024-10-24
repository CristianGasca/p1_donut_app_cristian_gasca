import 'package:flutter/material.dart';


class SmoothieTile extends StatelessWidget {
  
  final String smoothieFlavor;
  final String smoothiePrice;
  final dynamic smoothieColor; //dybamic pq sera de tipo color 
  final String imageName;

  const SmoothieTile({super.key, required this.smoothieFlavor, required this.smoothiePrice, this.smoothieColor, required this.imageName, required Null Function() onAddToCart});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(decoration: BoxDecoration(color: smoothieColor[100], borderRadius: BorderRadius.circular(24)),
      
      child: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [Container(
          decoration: BoxDecoration(color: smoothieColor[50], borderRadius: const BorderRadius.only(topRight: Radius.circular(24), bottomLeft: Radius.circular(24))),
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 18),
          child: Text('\$$smoothiePrice', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: smoothieColor[800])),
        )],),
        //smoothie picture 
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
          child: Image.asset(imageName),
        ),

        //smoothie flavor text
        Text(smoothieFlavor, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),

        // texto
        Text('smoothie king', style: TextStyle(color: Colors.grey[600]),),
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