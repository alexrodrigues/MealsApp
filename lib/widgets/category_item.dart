import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  final String _title;
  final Color _backgroundColor;

  CategoryItem(this._title, this._backgroundColor);

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
