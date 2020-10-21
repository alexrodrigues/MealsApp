import 'package:flutter/material.dart';

import '../model/meal.dart';
import './meal_item_info.dart';

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
                Positioned(
                  bottom: 0,
                  right: 10,
                  child: Container(
                    width: imageWidth,
                    color: Colors.black54,
                    padding: EdgeInsets.symmetric(
                      vertical: 5,
                      horizontal: 20,
                    ),
                    child: Text(
                      _meal.title,
                      style: TextStyle(
                        fontSize: 26.0,
                        color: Colors.white,
                      ),
                      softWrap: true,
                      overflow: TextOverflow.fade,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 20,
                bottom: 20,
              ),
              child: Container(
                width: imageWidth,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    MealItemInfo(
                      Icons.schedule,
                      "${_meal.duration} min",
                    ),
                    MealItemInfo(
                      Icons.work,
                      _meal.getComplexityText,
                    ),
                    MealItemInfo(
                      Icons.attach_money,
                      _meal.getAffordabilityText,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
