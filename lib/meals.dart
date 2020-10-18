import 'package:flutter/material.dart';

import './model/category.dart';

class MealsScreen extends StatelessWidget {
  final Category _category;
  MealsScreen(this._category);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(_category.title),
        ),
        body: Center(child: Text('Recipe')));
  }
}
