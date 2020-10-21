import 'package:flutter/material.dart';

class MealItemInfo extends StatelessWidget {
  final String _label;
  final IconData _icon;

  MealItemInfo(this._icon, this._label);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(_icon),
        SizedBox(width: 6),
        Text(
          _label,
          style: TextStyle(
            color: Colors.black,
          ),
        )
      ],
    );
  }
}
