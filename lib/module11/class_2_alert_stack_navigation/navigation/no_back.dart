import 'package:flutter/material.dart';
import 'package:schoolmanagement/module11/class2_alert_stack_navigation/navigation/page_next.dart';

class NoBackNav extends StatelessWidget {
  const NoBackNav({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        centerTitle: true,
        title: Text("No Back Navigation",
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
            SizedBox(height: 50,),
            Text('This is No Back Page',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
            SizedBox(height: 40,),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
              ),
              onPressed: (){
                Navigator.pop(
                    context
                );
              },
              child: Text('Back isn\'t exist',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  //backgroundColor: Colors.deepOrange,
                ),
              ),

            ),
          ],
        ),
      ),
    );
  }
}
