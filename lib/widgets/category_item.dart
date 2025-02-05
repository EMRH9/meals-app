import 'package:flutter/material.dart';
import 'package:food_app/screens/meals.dart';

class CategoryItem extends StatelessWidget {
  CategoryItem({super.key, required this.title, required this.itemColor});
  final String title;
  final Color itemColor;
  // final List<String> meals;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(15),
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => Meals(
              title: title,
            ),
          ),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              itemColor.withOpacity(1),
              itemColor.withOpacity(0.50),
            ],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            title,
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
      ),
    );
  }
}
