import 'package:flutter/material.dart';

class ListViewBuilderForContainer extends StatelessWidget {
  const ListViewBuilderForContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        centerTitle: true,
        title: Text("List View Builder using Card",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        ),
      ),
      body: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 20,
        itemBuilder: (context, index){
          return Container(
            width: 200,
            // height: 200, // taking full height because there is no more items
            color: Colors.blue[100*((index % 8) + 1)],
            child: Text('Item No: ${ index + 1 }'),
          );
        }
      ),
    );
  }
}
