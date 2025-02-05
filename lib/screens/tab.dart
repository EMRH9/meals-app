import 'package:flutter/material.dart';

class Tab extends StatelessWidget {
  Tab({super.key});

  final items = [
    BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
    BottomNavigationBarItem(icon: Icon(Icons.category), label: "Categories"),
    BottomNavigationBarItem(icon: Icon(Icons.fastfood), label: "Food"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Center(child: Text("Content Here")), // Placeholder content
      bottomNavigationBar: BottomNavigationBar(items: items),
    );
  }
}
