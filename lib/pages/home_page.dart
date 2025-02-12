import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          )
          // Tab bar

          // Tab bar view

          // Carrito

        ],
      ),
    );
  }
}
