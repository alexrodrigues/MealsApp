import 'package:flutter/material.dart';

import 'package:meals_app/model/meal.dart';

class MealDetailScreen extends StatelessWidget {
  static const ROUTE_NAME = "MealDetailScreen";

  @override
  Widget build(BuildContext context) {
    final _meal = ModalRoute.of(context).settings.arguments as Meal;

    return Scaffold(
      appBar: AppBar(
        title: Text('DeliMeals'),
      ),
      body: Center(
        child: Text(_meal.title),
      ),
    );
  }
}
