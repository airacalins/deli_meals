import 'package:deli_meals/widget/item/meal_item.dart';
import 'package:flutter/material.dart';

import '../../models/category.dart';
import '../../dummy_data/dummy_meals.dart';

class MealsScreen extends StatelessWidget {
  static const routeName = '/meals';

  @override
  Widget build(BuildContext context) {
    final category = ModalRoute.of(context)!.settings.arguments as Category;

    final meals = DUMMY_MEALS
        .where((meal) => meal.categories.contains(category.id))
        .toList();

    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: Text(category.title),
        ),
        body: ListView.builder(
          itemBuilder: (context, index) {
            return MealItem(meals[index]);
          },
          itemCount: meals.length,
        ));
  }
}
