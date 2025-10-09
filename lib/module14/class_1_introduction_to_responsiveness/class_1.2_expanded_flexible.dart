import 'package:flutter/material.dart';

class ExpandedFlexible extends StatelessWidget {
  const ExpandedFlexible({super.key});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    final bool isTable = screenSize.width > 600;

    final Orientation deviceMode = MediaQuery.of(context).orientation;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Responsive',
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.deepOrange,
      ),
      body: Column(
          children: [
            SizedBox(
              height: 200,
              child: ListView.builder(  // list items will  place within 200px height
                itemCount: 20,
                itemBuilder: (context, index){
                  return ListTile(
                    title: Text('Hello, Flutter!'),
                  );
                }
              ),
            ),
            Divider(
              height: 50,
              color: Colors.blue,
            ),
            Expanded(
              child: ListView.builder(  // list items will  place within 200px height
                itemCount: 20,
                itemBuilder: (context, index){
                  return ListTile(
                    title: Text('Hello, Flutter App!'),
                  );
                }
              ),
            ),

          ],
        ),
      );
  }
}
