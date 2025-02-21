import 'package:donut_app_2a_vargas/utils/donut_tile.dart';
import 'package:flutter/material.dart';

class DonutTab extends StatelessWidget {
  
  // Donut List
  final List donutsOnSale = [
    ["Ice Cream", "36", Colors.blue, "lib/images/icecream_donut.png"],
    ["Strawberry", "45", Colors.red, "lib/images/strawberry_donut.png"],
    ["Grape Ape", "84", Colors.red, "lib/images/grape_donut.png"],
    ["Chocolate", "45", Colors.red, "lib/images/chocolate_donut.png"],
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
        crossAxisCount: 2),
      itemBuilder: (context, index) {
        return DonutTile(
          donutFlavor: donutsOnSale[index][0],
          donutPrice: donutsOnSale[index][1],
          donutColor: donutsOnSale[index][2],
          imageName: donutsOnSale[index][3],
        );
      }
    );
  }
}