import 'package:deli_meals/widget/item/category_item.dart';
import 'package:flutter/material.dart';

import '../../dummy_data/dummy_categories.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Icon(Icons.menu),
      ),
      body: GridView(
        children: DUMMY_CATEGORIES
          .map((category) => CategoryItem(category))
          .toList(),
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
          maxCrossAxisExtent: 200,
        ),
        padding: const EdgeInsets.all(15),
      )
    );
  }
}
