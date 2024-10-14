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

  List<Widget> myTabs = [
  //donut tab 
  const MyTab(
    iconPath: 'lib/icons/donut.png',
    ),
  // burger tab
  const MyTab(
    iconPath: 'lib/icons/burger.png' 
  ),
  //smoithie tab
  const MyTab(iconPath: 'lib/icons/smoothie.png'),
  //pancake tab
  const MyTab(iconPath: 'lib/icons/pancakes.png'),
  //pizza tab
  const MyTab(iconPath: 'lib/icons/pizza.png')
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: myTabs.length,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: Padding(
            padding: const EdgeInsets.only(left:8.0),
            child: Icon( 
              Icons.menu,
              color: Colors.grey[800],
            ),
          ),
          actions: const [Padding(
            padding:EdgeInsets.only(right:15.0),
            child: Icon(Icons.person),
          )], //Crea un area de gestion de cuentas
        ) ,
      body: Column(
          children: <Widget>[
          //texto "I want to eat"
            const Padding(
              padding: EdgeInsets.all(24.0),
              child: Row(
                children: [
                  Text("I want to ", style: TextStyle(fontSize: 24.0)),
                  Text("eat", style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold, decoration: TextDecoration.underline),
                  )
                  // fontWeight: FontWeight.bold,
                     ],     //decoration: TextDecoration.underline),),
            ),
              ),
      
          //tab bar
          TabBar(tabs: myTabs),
      
          //tab bar view
          const Expanded(child: TabBarView(children: [
          DonutTab(),
          Burgertab(),
          SmoithieTab(),
          pancakeTab(),
          PizzaTab() ] ))
      
          //total del carrito
        ]),
      ),
    );
  }
}