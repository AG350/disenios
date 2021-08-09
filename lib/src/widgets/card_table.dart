import 'dart:ui';

import 'package:flutter/material.dart';

class CardTable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Table(
      children: [
        TableRow(
          children: [
            _SingleCard(Icons.verified_user, 'Users', Colors.red),
            _SingleCard(
                Icons.calendar_view_day_rounded, 'Calendar', Colors.blue),
          ],
        ),
        TableRow(
          children: [
            _SingleCard(Icons.navigation_outlined, 'Maps', Colors.orange),
            _SingleCard(Icons.calculate_outlined, 'Calculator', Colors.green),
          ],
        ),
        TableRow(
          children: [
            _SingleCard(Icons.search, 'Search', Colors.yellow),
            _SingleCard(Icons.gamepad_sharp, 'Games', Colors.pinkAccent),
          ],
        ),
        TableRow(
          children: [
            _SingleCard(Icons.shop, 'Shop', Colors.teal),
            _SingleCard(Icons.local_pizza, 'Food', Colors.indigo),
          ],
        ),
      ],
    );
  }
}

class _SingleCard extends StatelessWidget {
  final IconData icon;
  final String label;
  final Color color;

  const _SingleCard(this.icon, this.label, this.color);
  @override
  Widget build(BuildContext context) {
    return _CardBackground(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundColor: this.color,
            child: Icon(
              this.icon,
              size: 35,
              color: Colors.white,
            ),
            radius: 30,
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            this.label,
            style: TextStyle(color: this.color, fontSize: 18),
          )
        ],
      ),
    );
  }
}

class _CardBackground extends StatelessWidget {
  final Widget child;

  const _CardBackground({required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: Container(
            height: 180,
            decoration: BoxDecoration(
              color: Color.fromRGBO(62, 66, 107, 0.7),
              borderRadius: BorderRadius.circular(20),
            ),
            child: child,
          ),
        ),
      ),
    );
  }
}
