import 'package:flutter/material.dart';
import 'package:food_app/data/dummy_meals.dart';

class DetailsScreen extends StatelessWidget {
  DetailsScreen({super.key, required this.mealTitle});
  final String mealTitle;

  @override
  Widget build(BuildContext context) {
    var meal = dummyMeals.firstWhere((meal) => meal.title == mealTitle);
    var imageUrl = meal.imageUrl;
    return Scaffold(
      appBar: AppBar(
        title: Text(mealTitle),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.network(imageUrl),
            SizedBox(
              height: 15,
            ),
            Text(
              "Ingredients",
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    color: const Color.fromARGB(255, 253, 178, 15),
                  ),
            ),
            SizedBox(
              height: 10,
            ),
            for (final ingredient in meal.ingredients)
              Text(
                ingredient,
                style: TextStyle(color: Colors.white),
              ),
            SizedBox(
              height: 15,
            ),
            Text(
              "Steps",
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    color: const Color.fromARGB(255, 253, 178, 15),
                  ),
            ),
            SizedBox(
              height: 10,
            ),
            for (final step in meal.steps)
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                child: Text(
                  textAlign: TextAlign.center,
                  step,
                  style: TextStyle(color: Colors.white),
                ),
              )
          ],
        ),
      ),
    );
  }
}
