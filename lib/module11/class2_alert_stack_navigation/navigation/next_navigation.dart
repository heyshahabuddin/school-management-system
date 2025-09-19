import 'package:flutter/material.dart';

class NextNavigation extends StatelessWidget {
  const NextNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        centerTitle: true,
        title: Text("Navigation Back",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 35,
          ),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Text('This is Navigation Back Page'),
            ElevatedButton(
                onPressed: (){
                  Navigator.pop(
                    context
                  );
                },
                child: Text('Back',
                  style: TextStyle(
                    color: Colors.deepOrange,
                    fontWeight: FontWeight.bold,
                  ),
                )
            )
          ],
        ),
      ),
    );
  }
}
