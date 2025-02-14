import 'package:donut_app_2a_vargas/tabs/burger_tab.dart';
import 'package:donut_app_2a_vargas/tabs/donut_Tab.dart';
import 'package:donut_app_2a_vargas/tabs/pancakes_tab.dart';
import 'package:donut_app_2a_vargas/tabs/pizza_tab.dart';
import 'package:donut_app_2a_vargas/tabs/smoothie_tab.dart';
import 'package:donut_app_2a_vargas/utils/my_tab.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> myTabs = [
    // Donut tab
    const MyTab(iconPath: 'lib/icons/donut.png'),
    // Burger tab
    const MyTab(iconPath: 'lib/icons/burger.png'),
    // Smoothie tab
    const MyTab(iconPath: 'lib/icons/smoothie.png'),
    // Pancakes tab
    const MyTab(iconPath: 'lib/icons/pancakes.png'),
    // Pizza tab
    const MyTab(iconPath: 'lib/icons/pizza.png'),
  ];
  @override
  // This widget allows tab management
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: myTabs.length,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          // Left Icon
          leading: Icon(
            Icons.menu,
            color: Colors.grey[800]
          ),
          actions: [Padding(
            padding: const EdgeInsets.only(right: 24.0),
            child: Icon(Icons.person),
          )],
        ),
        body: Column(
          children: [
            // Texto "I want to eat"
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 36, vertical: 18),
              child: Row(
                children: [
                  Text(
                    "I want to ",
                    style: TextStyle(fontSize: 32)),
                  Text(
                    "Eat", 
                    style: TextStyle(
                    fontSize: 32, // Font size
                    fontWeight: FontWeight.bold, // Bold Text
                    decoration: TextDecoration.underline // Underline
                  ))
                ],
              ),
            ),
            // Tab bar
            TabBar(tabs: myTabs),
            // Tab bar view
            Expanded(
              child: TabBarView(children: [
                DonutTab(),
                BurgerTab(),
                SmoothieTab(),
                PancakesTab(),
                PizzaTab(),
              ]),
            )
            // Carrito
      
          ],
        ),
      ),
    );
  }
}
