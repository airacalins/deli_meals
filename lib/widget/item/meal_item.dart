// ignore_for_file: use_key_in_widget_constructors
import 'package:flutter/material.dart';

import '../../models/meal.dart';

class MealItem extends StatelessWidget {
  final Meal meal;

  const MealItem(this.meal);

  void selectMeal() {}

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: selectMeal,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Card(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          elevation: 1,
          margin: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
            Text(meal.title),
            Text("${meal.complexity}"),
            Text("${meal.duration}"),
            Image.network(meal.imageUrl)
          ]),
        ),
      ),
    );
  }
}
