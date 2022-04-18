import '../../models/category.dart';
import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  final Category category;

  const CategoryItem(this.category, {Key? key}) : super(key: key);
  // CategoryItem(this.category);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          // Image.asset('assets/images/waiting.png'),
          Text(category.title),
        ],
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15), 
        color: Theme.of(context).primaryColor
      ),
      padding: const EdgeInsets.all(15),
    );
  }
}
