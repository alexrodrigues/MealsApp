import 'package:flutter/material.dart';

import 'package:meals_app/categories.dart';
import 'package:meals_app/meals.dart';

class CategoryItem extends StatelessWidget {
  final String _title;
  final Color _backgroundColor;

  CategoryItem(this._title, this._backgroundColor);

  void selectCategory(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => MealsScreen(),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(15),
      splashColor: Theme.of(context).primaryColor,
      onTap: () => selectCategory(context),
      child: Container(
        padding: const EdgeInsets.all(8),
        child: Text(
          _title,
          style: Theme.of(context).textTheme.title,
        ),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [_backgroundColor.withOpacity(0.7), _backgroundColor],
            begin: Alignment.topLeft,
            end: Alignment.topRight,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }
}
