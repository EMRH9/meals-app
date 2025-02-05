import 'package:flutter/material.dart';
import 'package:food_app/data/available_categories.dart';
import 'package:food_app/models/my_category.dart';
import 'package:food_app/widgets/category_item.dart';

class Categories extends StatelessWidget {
  Categories({super.key});
  final List<MyCategory> categories = [];

  @override
  Widget build(BuildContext context) {
    print(categories.length);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Food Categories"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
            childAspectRatio: 1.5,
          ),
          scrollDirection: Axis.vertical,
          semanticChildCount: 4,
          children: [
            ...availableCategories.map(
              (category) => CategoryItem(
                // meals: category.,
                title: category.title,
                itemColor: category.color,
              ),
            )
          ],
        ),
      ),
    );
  }
}
