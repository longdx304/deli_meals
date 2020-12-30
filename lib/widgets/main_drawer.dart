import 'package:flutter/material.dart';

import '../screens/filters_screen.dart';

class MainDrawer extends StatelessWidget {
  Widget buildListTile({
    String title,
    IconData icon,
    Function tapHandler,
  }) {
    return ListTile(
      leading: Icon(
        icon,
        size: 26,
      ),
      title: Text(
        title,
        style: TextStyle(
          fontFamily: 'RobotoCondensed',
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
      onTap: tapHandler,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            color: Theme.of(context).accentColor,
            height: 120,
            width: double.infinity,
            padding: EdgeInsets.all(20),
            alignment: Alignment.centerLeft,
            child: Text(
              'Cooking Up!',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w900,
                color: Theme.of(context).primaryColor,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          buildListTile(
            title: 'Meals',
            icon: Icons.restaurant,
            tapHandler: () => Navigator.of(context).pushReplacementNamed('/'),
          ),
          buildListTile(
            title: 'Filters',
            icon: Icons.settings,
            tapHandler: () => Navigator.of(context)
                .pushReplacementNamed(FiltersScreen.routeName),
          ),
        ],
      ),
    );
  }
}
