import 'package:flutter/material.dart';
import '../utils/my_tab_name.dart';
class MyTab extends StatelessWidget {
  final String iconPath;
  final String iname;
  const MyTab({super.key, required this.iconPath, required this.iname});

  @override
 Widget build(BuildContext context) {
    MyTabName(name: iname);
    return Tab(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded( // Hace que el icono ocupe todo el espacio disponible
            child: Container(
              padding: const EdgeInsets.all(0),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(12),
              ),
              child: Image.asset(
                iconPath,
                color: Colors.grey[600],
              ),
            ),
          ),
          const SizedBox(height: 8.0), // Espacio entre el ícono y el texto
          Text(
            iname,
            style: TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.bold,
              color: Colors.grey[600],
            ),
          ),
        ],
      ),
    );
  }
}