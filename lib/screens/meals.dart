import 'package:flutter/material.dart';
import 'package:food_app/data/available_categories.dart';
import 'package:food_app/data/dummy_meals.dart';
import 'package:food_app/screens/details_screen.dart';
import 'package:food_app/widgets/food_item.dart';

class Meals extends StatelessWidget {
  Meals({super.key, required this.title});
  final String title;
  final List<Map<String, String>> meals = [];

  filterMeals(String title) {
    for (var i in availableCategories) {
      if (i.title == title) {
        var meal = dummyMeals
            .where((meal) => meal.categories.contains(i.id))
            .map(
              (element) => {
                "title": element.title,
                "url": element.imageUrl,
                "affordability": element.affordability.name,
                "complexity": element.complexity.name,
                "duration": element.duration.toString(),
              },
            )
            .toList()
            .toList();
        meals.addAll(meal);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    filterMeals(title);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Meals"),
      ),
      body: ListView.builder(
        itemCount: meals.length,
        itemBuilder: (context, index) {
          final mealTitle = meals[index]['title'];
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              borderRadius: BorderRadius.circular(20.0),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        DetailsScreen(mealTitle: mealTitle as String),
                  ),
                );
              },
              child: FoodItem(
                time: meals[index]['duration']!,
                hardness: meals[index]['complexity']!,
                availability: meals[index]['affordability']!,
                mealTitle: meals[index]['title'] as String,
                imageUrl: meals[index]['url'],
              ),
            ),
          );
        },
      ),
    );
  }
}
