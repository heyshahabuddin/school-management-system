// Right click on a widget to create custom widget --> Refactor --> Extract Flutter Widget
// Give Name of the widget --> then copy the code --> Place it into a fresh dart file
// Then use and import as your wish

import 'package:flutter/material.dart';

class CustomCityWidget extends StatelessWidget {
  final String img, title, rating;

  const CustomCityWidget({
    super.key, required this.img, required this.title, required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.network('https://investbangladesh.co/wp-content/uploads/2024/04/hero-bangladesh.jpg'),
        Positioned(
          bottom: 15,
          right: 70,
          child: Text('Bangladesh',
            style: TextStyle(
              color: Colors.white,
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
