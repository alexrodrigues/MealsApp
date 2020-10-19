import 'package:flutter/material.dart';

import './model/category.dart';

class MealsScreen extends StatelessWidget {
  static const ROUTE_NAME = "MealsScreen";

  @override
  Widget build(BuildContext context) {
    final category = ModalRoute.of(context).settings.arguments as Category;
    return Scaffold(
        appBar: AppBar(
          title: Text(category.title),
        ),
        body: Center(child: Text('Recipe')));
  }
}
