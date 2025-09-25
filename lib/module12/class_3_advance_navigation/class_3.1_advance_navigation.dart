import 'package:flutter/material.dart';
import 'package:schoolmanagement/module11/class_2_alert_stack_navigation/navigation/next_navigation.dart';

class AdvancedCustomNavigation extends StatelessWidget {
  const AdvancedCustomNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        centerTitle: true,
        title: Text("Navigation Next",
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
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepOrange,
                ),
                onPressed: (){
                  // Using custom routes from app.dart
                  Navigator.pushNamed(context, '/home');

                  /*
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => NextNavigation()
                      ),
                    );
                  */
                },
                child: Text('Next Page',
                  style: TextStyle(
                    color: Colors.white,
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
