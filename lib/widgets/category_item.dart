import 'package:flutter/material.dart';

import '../model/category.dart';
import 'package:meals_app/screens/meals.dart';

class CategoryItem extends StatelessWidget {
  final Category _category;

  CategoryItem(this._category);

  void selectCategory(BuildContext ctx) {
    // Navigator.of(context).push(MaterialPageRoute(
    //   builder: (context) => MealsScreen(_category),
    // ));

    Navigator.of(ctx).pushNamed(MealsScreen.ROUTE_NAME, arguments: _category);
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
          _category.title,
          style: Theme.of(context).textTheme.title,
        ),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [_category.color.withOpacity(0.7), _category.color],
            begin: Alignment.topLeft,
            end: Alignment.topRight,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }
}
