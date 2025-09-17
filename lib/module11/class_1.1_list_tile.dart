import 'package:flutter/material.dart';
class ListTileWidget extends StatelessWidget {
  const ListTileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Module 11 Class 1',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.deepOrange,
      ),
      body: Column(
        children: [
          ListTile(
            leading: Icon(Icons.call),                     // add at the first
            trailing: Icon(Icons.remove_circle_outline),  // add at the end
            title: Text('MD. SHAHAB UDDIN',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Text('+8801722574364'),
          )
        ],
      ),
    );
  }
}
