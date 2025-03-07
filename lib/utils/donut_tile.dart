import 'package:flutter/material.dart';
 
class DonutTile extends StatelessWidget {
 final String donutFlavor;
 final String donutStore;
 final String donutPrice;
 final dynamic donutColor;  //dynamic porque será de tipo Color y también usará []
 final String imageName;
 
 const DonutTile({
   super.key,
   required this.donutFlavor,
   required this.donutStore,
   required this.donutPrice,
   required this.donutColor,
   required this.imageName,
 });
                 
 @override
 Widget build(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
       decoration: BoxDecoration(
     color: donutColor[50],
     borderRadius: BorderRadius.circular(24)),
     child: Column(
        children: [
         // Price Tag
         Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: donutColor[100],
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(24),
                    topRight: Radius.circular(24)
                  )),
                  padding: 
                  const EdgeInsets.symmetric(vertical: 8, horizontal: 18),
                  child: Text(
                    '\$$donutPrice',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: donutColor[800]),
                  ),
              )
            ],
         ),
         // Donut Picture
         Padding(
           padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12),
           child: Image.asset(imageName),
         ),
         // Donut Flavor
         Text(donutFlavor,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18)),
         const SizedBox(
          height: 4
         ),
         // Donut Store
         Text(donutStore, style: TextStyle(color: Colors.grey[600])),
         // Favorite icon + Add button
         Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                icon: Icon(Icons.favorite_border),
                onPressed: () {
                  //Something
                },
              ),
              TextButton(
                child: Text("Add"),
                onPressed: () {
                  //Something
                },
              ),
            ],
          ),
       ],
     ),
    ),
  );
 }
}