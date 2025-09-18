import 'package:flutter/material.dart';

class GridViewBasic extends StatelessWidget {
  const GridViewBasic({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        centerTitle: true,
        title: Text("Grid View Basic",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        ),
      ),
      body: GridView.count(
        crossAxisCount: 2,       // to set the element in a row
        crossAxisSpacing: 10,   // to set spacing between 2 elements of a row without at beginning of an element and at the end of an element
        mainAxisSpacing: 10,   // to set spacing below the element of a row
        children: List.generate(12, (index){
          return Card(
            elevation: 20, // increase shadow
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            ),
            color: Colors.deepOrange,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,  // use to set the content in middle of column elements
              children: [
                Icon(
                  Icons.call,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  size: 30,
                ),  // add at the end
                Text('Item ${ index + 1 }',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),

              ],
            ),
          );
        }),
      ),
    );
  }
}
