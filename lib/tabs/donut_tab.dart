import 'package:donut_app_2a_vargas/utils/donut_tile.dart';
import 'package:flutter/material.dart';

class DonutTab extends StatelessWidget {
  
  // Donut List
  final List donutsOnSale = [
    ["Ice Cream", "Krispy Kreme", "36", Colors.blue, "lib/images/icecream_donut.png"],
    ["Strawberry", "Dunkin Donuts", "45", Colors.red, "lib/images/strawberry_donut.png"],
    ["Grape Ape", "Krispy Kreme", "84", Colors.purple, "lib/images/grape_donut.png"],
    ["Choco", "Dunkin Donuts", "45", Colors.brown, "lib/images/chocolate_donut.png"],
  ];
  DonutTab({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      // Amount of elements
      itemCount: donutsOnSale.length,
      padding: const EdgeInsets.all(12),
      // Organizes the grid
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        // Number of columns
        crossAxisCount: 2,
        // Aspect ratio
        childAspectRatio: 1 / 1.5),
      itemBuilder: (context, index) {
        return DonutTile(
          donutFlavor: donutsOnSale[index][0],
          donutStore: donutsOnSale[index][1],
          donutPrice: donutsOnSale[index][2],
          donutColor: donutsOnSale[index][3],
          imageName: donutsOnSale[index][4],
        );
      }
    );
  }
}