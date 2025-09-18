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
        Container(
          height: 200,
          width: 300,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(image: NetworkImage(img)),  // Convert the image into image
          ),
          //child: Image.network(img)
        ),
        Positioned(
          bottom: 35,
          right: 70,
          child: Text(title,
            style: TextStyle(
              color: Colors.white,
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        ElevatedButton(
            onPressed: (){

            },
            child: Text(
              '* ${ rating }',
              style: TextStyle(
                color: Colors.deepOrange,
                fontWeight: FontWeight.bold,
              ),
            ),
        ),

      ],
    );
  }
}
