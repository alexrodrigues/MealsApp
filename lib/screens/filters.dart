import 'package:flutter/material.dart';

class FilterItem {
  String title = "";
  String subtitle = "";
  bool isActive = false;

  FilterItem(this.title, this.subtitle, this.isActive);
}

class FiltersScreen extends StatefulWidget {
  static const ROUTE_NAME = "FiltersScreen";

  @override
  _FiltersScreenState createState() => _FiltersScreenState();
}

class _FiltersScreenState extends State<FiltersScreen> {
  final List<FilterItem> filters = [
    FilterItem("Gluten free", "Only food without gluten", false),
    FilterItem("Vegetarian", "Only food without meat", false),
    FilterItem("Vegan", "Only food without animal origin", false),
    FilterItem("Lactose free", "Only food without milk", false),
  ];

  void onSwitchChange(FilterItem element, bool newValue) {
    setState(() {
      element.isActive = newValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Filters"),
      ),
      body: Column(children: [
        Container(
          padding: EdgeInsets.all(20),
          child: Text(
            "Adjust your meal selection",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Expanded(
          child: ListView.builder(
              itemCount: filters.length,
              itemBuilder: (context, index) {
                FilterItem e = filters[index];

                return SwitchListTile(
                  title: Text(e.title),
                  subtitle: Text(e.subtitle),
                  value: e.isActive,
                  onChanged: (newValue) => onSwitchChange(e, newValue),
                );
              }),
        )
      ]),
    );
  }
}
