import '../data/dummy_data.dart';
import '../widgets/category_item.dart';
import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView(
      padding: const EdgeInsets.all(25),
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200,
        childAspectRatio: 3 / 2,
        mainAxisSpacing: 20,
        crossAxisSpacing: 20,
      ),
      children: DUMMY_CATEGORIES
          .map(
            (categoryData) => CategoryItem(
              id: categoryData.id,
              title: categoryData.title,
              color: categoryData.color,
            ),
          )
          .toList(),
    );
  }
}
