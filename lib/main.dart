import 'package:deli_meals/screens/categories/categories_screen.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    final ThemeData theme = ThemeData();

    return MaterialApp(
      home: CategoriesScreen(),
      title: 'DeliMeals',
      theme: theme.copyWith(
        appBarTheme: AppBarTheme(backgroundColor: Colors.lime[800]),
        primaryColor: Colors.lime[900],
        colorScheme: theme.colorScheme.copyWith(secondary: Colors.brown[50]),
        textTheme: ThemeData.light().textTheme.copyWith(
          headline1: const TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: Colors.black87),
          headline2: const TextStyle(fontSize: 26, fontWeight: FontWeight.bold, color: Colors.black87),
          headline3: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.black87),
          headline4: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black87),
          headline5: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black87),
          subtitle1: const TextStyle(fontSize: 13, fontWeight: FontWeight.bold, color: Colors.black38),
        )
      ),
    );
  }
}
