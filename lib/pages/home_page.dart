import 'package:flutter/material.dart';
import 'package:p1_donut_app_cristian_gasca/utils/my_tab.dart';
import '../tab/donut_tab.dart';
import '../tab/burgerTab.dart';
import '../tab/pancakeTab.dart';
import '../tab/smoithieTab.dart';
import '../tab/PizzaTab.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int totalItems = 0; // Total number of items
  double totalPrice = 0.0; // Total price of the cart

  List<Widget> myTabs = [
  //donut tab 
  const MyTab(
    iconPath: 'lib/icons/donut.png',
    iname: 'donut', 
  ),
   
  // burger tab
  const MyTab(
    iconPath: 'lib/icons/burger.png', iname: 'burger', 
  ),
  //smoithie tab
  const MyTab(iconPath: 'lib/icons/smoothie.png', iname: 'smothie',),
  //pancake tab
  const MyTab(iconPath: 'lib/icons/pancakes.png', iname: 'pancake',),
  //pizza tab
  const MyTab(iconPath: 'lib/icons/pizza.png', iname: 'pizza',)
  ];

  // Function to add items to the cart
  void addItemToCart(String itemName, double itemPrice) {
    setState(() {
      totalItems++; // Increment the item count
      totalPrice += itemPrice; // Add the item's price
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: myTabs.length,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: Icon(
            Icons.menu,
            color: Colors.grey[800],
          ),
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 24.0),
              child: Icon(Icons.person),
            )
          ],
        ),
      body: Column(
          children: [
           const Padding(
              padding: EdgeInsets.all(24.0),
              child: Row(
                children: [
                  Text(
                    "I want to ",
                    style: TextStyle(fontSize: 24),
                  ),
                  Text(
                    "Eat",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline,
                    ),
                  )
                ],
              ),
            ),
            TabBar(tabs: myTabs),
            Expanded(
              child: TabBarView(
                children: [
                  DonutTab(addItemToCart: addItemToCart),
                  burgertab(addItemToCart: addItemToCart), // Pass function here
                  Smoothietab(addItemToCart: addItemToCart),
                  Pancaketab(addItemToCart: addItemToCart),
                  Pizzatab(addItemToCart: addItemToCart),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(24.0),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "$totalItems Items | \$$totalPrice",
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 4),
                      const Text(
                        "Delivery Charges Included",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // Action to view the cart
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.pink,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 24,
                        vertical: 12,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    child: const Text(
                      "View Cart",
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
  }