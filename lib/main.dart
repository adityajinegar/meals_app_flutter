import 'package:meals_app_flutter/screens/filters.dart';

import 'screens/category_meals.dart';
import 'screens/meal_detail.dart';
import 'screens/tabs.dart';

import 'screens/categories.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'DeliMeals',
      theme: ThemeData(
          colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.teal)
              .copyWith(secondary: Colors.tealAccent),
          canvasColor: const Color.fromRGBO(255, 254, 229, 1),
          fontFamily: 'Raleway',
          textTheme: ThemeData.light().textTheme.copyWith(
                titleSmall: const TextStyle(
                  color: Color.fromRGBO(20, 51, 51, 1),
                ),
                titleMedium: const TextStyle(
                  color: Color.fromRGBO(20, 51, 51, 1),
                ),
                titleLarge: const TextStyle(
                  fontSize: 20,
                  fontFamily: 'RobotoCondensed',
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              )),
      // home: const Categories(),
      routes: {
        '/': (context) => const Tabs(),
        CategoryMeals.routeName: (context) => const CategoryMeals(),
        MealDetail.routeName: (context) => const MealDetail(),
        Filters.routeName: (context) => const Filters(),
      },
      onUnknownRoute: (settings) {
        return MaterialPageRoute(
          builder: (context) => const Categories(),
        );
      },
    );
  }
}
