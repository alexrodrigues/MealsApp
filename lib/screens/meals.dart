import 'package:flutter/material.dart';

import '../model/category.dart';
import '../data/dummy_data.dart';
import '../widgets/meal_item.dart';

class MealsScreen extends StatelessWidget {
  static const ROUTE_NAME = "MealsScreen";

  @override
  Widget build(BuildContext context) {
    final category = ModalRoute.of(context).settings.arguments as Category;

    final meals = DUMMY_MEALS
        .where((element) => element.categories.contains(category.id))
        .toList();

    return Scaffold(
      appBar: AppBar(
        title: Text('DeliMeals'),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Row(children: [
            MealItem(meals[index]),
          ]);
        },
        itemCount: meals.length,
      ),
    );
  }
}
