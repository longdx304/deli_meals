import 'package:flutter/material.dart';

import '../dummy_data.dart';
import '../widgets/meal_item.dart';

class CategoryMealsScreen extends StatelessWidget {
  static const routeName = '/category-meals';

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    final categoryTitle = routeArgs['title'];
    final categoryId = routeArgs['id'];
    final categoryMeals = DUMMY_MEALS
        .where((meal) => meal.categories.contains(categoryId))
        .toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) => MealItem(
          id: categoryMeals[index].id,
          imageUrl: categoryMeals[index].imageUrl,
          title: categoryMeals[index].title,
          duration: categoryMeals[index].duration,
          complexity: categoryMeals[index].complexity,
          affordability: categoryMeals[index].affordability,
        ),
        itemCount: categoryMeals.length,
      ),
    );
  }
}
