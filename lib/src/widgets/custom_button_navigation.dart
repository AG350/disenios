import 'package:flutter/material.dart';

class CustomBottomNavigation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedItemColor: Colors.pink,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      backgroundColor: Color.fromRGBO(55, 57, 84, 1),
      unselectedItemColor: Color.fromRGBO(116, 117, 152, 1),
      items: [
        BottomNavigationBarItem(
            icon: Icon(
              Icons.calendar_today_sharp,
            ),
            label: 'Calendar'),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.pie_chart_outline_sharp,
            ),
            label: 'Chart'),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.supervised_user_circle_sharp,
            ),
            label: 'Users'),
      ],
    );
  }
}
