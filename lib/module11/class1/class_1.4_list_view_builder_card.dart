import 'package:flutter/material.dart';

class CustomListViewBuilderCard extends StatelessWidget {
  const CustomListViewBuilderCard({super.key});

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
        scrollDirection: Axis.vertical, // default properties
        itemCount: 20,
        itemBuilder: (context, index){
          return Card(
            child: ListTile(
              leading: Icon(Icons.call),                     // add at the first
              trailing: Icon(Icons.delete, color: Colors.red,),  // add at the end
              title: Text('MD. SHAHAB UDDIN ${ index + 1 }',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text('+8801722574364'),
            ),
          );
        },
      ),
    );
  }
}
