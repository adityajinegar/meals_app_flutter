import 'package:flutter/material.dart';

class MealDetail extends StatelessWidget {
  const MealDetail({super.key});

  static const routeName = '/meal-detail';

  @override
  Widget build(BuildContext context) {
    final mealId = ModalRoute.of(context)!.settings.arguments as String;

    return Scaffold(
      appBar: AppBar(
        title: Text(mealId),
      ),
      body: Text('abcd'),
    );
  }
}
