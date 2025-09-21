import 'package:flutter/material.dart';
import 'package:schoolmanagement/module11/class2_alert_stack_navigation/navigation/no_back.dart';

class NoBackPageNav extends StatelessWidget {
  const NoBackPageNav({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        centerTitle: true,
        title: Text("No Back Page Navigation",
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
            Text('This is No Back Page Navigation.',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),
            SizedBox(height: 40,),

            // No Back Button for navigation
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepOrange,
                ),
                onPressed: (){
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => NoBackNav()
                    ),
                  );
                },
                child: Text('No Back',
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                )
            ),
          ],
        ),
      ),
    );
  }
}
