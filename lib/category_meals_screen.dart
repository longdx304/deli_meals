import 'package:flutter/material.dart';

class CategoryMealsScreen extends StatelessWidget {
  final String categoryTitle;

  CategoryMealsScreen(this.categoryTitle);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle),
      ),
      body: Center(
        child: Text('The Recipes For The Category!'),
      ),
    );
  }
}
