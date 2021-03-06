import 'package:flutter/material.dart';
import 'package:meals_app/screens/filters.dart';
import 'package:meals_app/screens/meal_detail.dart';
import 'package:meals_app/screens/meals.dart';

import 'screens/categories.dart';
import 'screens/meals.dart';
import 'screens/tabs.dart';
import 'screens/bottom_nav.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DeliMeals',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        accentColor: Colors.amber,
        canvasColor: Color.fromRGBO(255, 254, 229, 1),
        // fontFamily: 'Raleway',
        // textTheme: ThemeData.light().textTheme.copyWith(
        //       body1: TextStyle(color: Color.fromARGB(20, 51, 51, 1)),
        //       body2: TextStyle(color: Color.fromARGB(20, 51, 51, 1)),
        // title: TextStyle(
        //   fontSize: 20,
        //   fontFamily: 'RobotoCondesed',
        //   fontWeight: FontWeight.bold,
        // ),
        //     ),
      ),
      initialRoute: '/',
      routes: {
        '/': (ctx) => BottomNavScreen(),
        CategoriesScreen.ROUTE_NAME: (context) => CategoriesScreen(),
        MealsScreen.ROUTE_NAME: (context) => MealsScreen(),
        MealDetailScreen.ROUTE_NAME: (context) => MealDetailScreen(),
        FiltersScreen.ROUTE_NAME: (context) => FiltersScreen(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DeliMeals'),
      ),
      body: Center(
        child: Text('Navigation Time!'),
      ),
    );
  }
}
