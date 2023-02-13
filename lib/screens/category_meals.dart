import 'package:flutter/material.dart';

class CategoryMeals extends StatelessWidget {
  // const CategoryMeals({
  //   super.key,
  //   required this.categoryId,
  //   required this.categoryTitle,
  // });
  // final String categoryId;
  // final String categoryTitle;

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context)!.settings.arguments as Map<String, String>;

    final categoryId = routeArgs['id'];
    final categoryTitle = routeArgs['title'];

    return Scaffold(
      appBar: AppBar(title: Text(categoryTitle!)),
      body: const Center(
        child: Text('The Recipes For The Category!'),
      ),
    );
  }
}
