import 'package:flutter/material.dart';

import '../model/meal.dart';

class MealItem extends StatelessWidget {
  final Meal _meal;

  MealItem(this._meal);

  void selectMeal() {}

  @override
  Widget build(BuildContext context) {
    final imageWidth = MediaQuery.of(context).size.width - 20;
    return InkWell(
      onTap: selectMeal,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        elevation: 4,
        margin: EdgeInsets.all(10),
        child: Column(
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),
                  child: Image.network(
                    _meal.imageUrl,
                    height: 250,
                    width: imageWidth,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
