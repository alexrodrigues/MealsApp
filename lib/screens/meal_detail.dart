import 'package:flutter/material.dart';

import 'package:meals_app/model/meal.dart';

class MealDetailScreen extends StatelessWidget {
  static const ROUTE_NAME = "MealDetailScreen";

  @override
  Widget build(BuildContext context) {
    final meal = ModalRoute.of(context).settings.arguments as Meal;

    final appBar = AppBar(title: Text(meal.title));
    final ingredientsHeight = MediaQuery.of(context).size.height -
        (appBar.preferredSize.height + 300 + 120);

    return Scaffold(
      appBar: appBar,
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 300,
            child: Image.network(
              meal.imageUrl,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(
              vertical: 10,
            ),
            height: 30,
            child: Text(
              "Ingredients",
              style: TextStyle(
                fontSize: 20,
                fontFamily: 'RobotoCondesed',
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(10)),
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(10),
            height: ingredientsHeight,
            child: ListView.builder(
              itemCount: meal.ingredients.length,
              itemBuilder: (context, index) {
                return Card(
                  color: Theme.of(context).accentColor,
                  child: Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                      child: Text(
                        meal.ingredients[index],
                      )),
                );
              },
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        foregroundColor: Colors.white,
        child: Icon(Icons.delete),
        onPressed: () {
          Navigator.of(context).pop(meal);
        },
      ),
    );
  }
}
