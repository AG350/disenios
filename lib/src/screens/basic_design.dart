import 'package:flutter/material.dart';

class BasicDesignScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image(
            image: AssetImage('assets/Landscape.jpg'),
          ),
          Title(),
          ButtonSection(),
          Description()
        ],
      ),
    );
  }
}

class Description extends StatelessWidget {
  const Description({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      child: Text(
          'Veniam nisi cupidatat eu veniam ut aliquip ex commodo laborum. Ea amet voluptate ut aliqua. Ullamco mollit velit non cupidatat consectetur eiusmod officia aliqua esse est. Minim ex adipisicing tempor deserunt Lorem Lorem non officia pariatur. Eiusmod magna ullamco cillum ex ullamco id.'),
    );
  }
}

class Title extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Un lugar por ahi',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                'Descripcion del lugar',
                style: TextStyle(color: Colors.black45),
              ),
            ],
          ),
          Expanded(
            child: Container(),
          ),
          Icon(
            Icons.star,
            color: Colors.red,
          ),
          Text('41'),
        ],
      ),
    );
  }
}

class ButtonSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CustomButton(Icons.call, 'Call'),
          CustomButton(Icons.assistant_navigation, 'Navigate'),
          CustomButton(Icons.share_location_sharp, 'Share'),
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final IconData icon;
  final String label;

  const CustomButton(this.icon, this.label);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          color: Colors.blue,
        ),
        Text(label,
            style: TextStyle(
              color: Colors.blue,
            )),
      ],
    );
  }
}
