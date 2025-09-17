import 'package:flutter/material.dart';

class ListViewBuilderWidget extends StatelessWidget {
  const ListViewBuilderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        centerTitle: true,
        title: Text("List View Builder",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: 20,
        itemBuilder: (context, index){
          return ListTile(
            leading: Icon(Icons.call),                     // add at the first
            trailing: Icon(Icons.delete, color: Colors.red,),  // add at the end
            title: Text('MD. SHAHAB UDDIN ${ index + 1 }',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Text('+8801722574364'),
          );
        },
      ),
    );
  }
}
