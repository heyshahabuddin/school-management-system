import 'package:flutter/material.dart';

class ListviewUsingSizedBox extends StatelessWidget {
  const ListviewUsingSizedBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Listview Using SizedBox',
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.deepOrange,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 500,
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
          ],
        ),
      ),
    );
  }
}
