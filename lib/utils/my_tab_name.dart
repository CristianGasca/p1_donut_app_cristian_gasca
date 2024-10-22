import 'package:flutter/material.dart';

class MyTabName extends StatelessWidget {
  final String name;
  const MyTabName({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: 0,
    child: Text(name, style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold, color: Colors.grey[600])
    ));
    
  }
}