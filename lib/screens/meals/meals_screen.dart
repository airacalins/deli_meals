import 'package:flutter/material.dart';

import '../../models/category.dart';

class MealsScreen extends StatelessWidget {
  static const routeName = '/meals';

  @override
  Widget build(BuildContext context) {
    final category = ModalRoute.of(context)!.settings.arguments as Category;

    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: Text(category.title),
        ),
        body: Center(
          child: Text(category.title),
        ));
  }
}
