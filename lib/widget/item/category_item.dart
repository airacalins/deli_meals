import 'package:deli_meals/screens/meals/meals_screen.dart';
import 'package:flutter/material.dart';

import '../../models/category.dart';

class CategoryItem extends StatelessWidget {
  final Category category;

  const CategoryItem(this.category, {Key? key}) : super(key: key);

  void selectCategory(BuildContext context) {
    Navigator
      .of(context)
      .pushNamed(MealsScreen.routeName, arguments: category);
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectCategory(context),
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(15),
      child: Container(
        child: Column(
          children: [
            // Image.asset('assets/images/waiting.png'),
            Text(category.title, style: Theme.of(context).textTheme.headline5,),
          ],
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15), 
          color: Theme.of(context).primaryColor
        ),
        padding: const EdgeInsets.all(15),
      ),
    );
  }
}

