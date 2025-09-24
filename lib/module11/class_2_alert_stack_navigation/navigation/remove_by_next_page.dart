import 'package:flutter/material.dart';
import 'package:schoolmanagement/module11/class2_alert_stack_navigation/navigation/no_back.dart';

class RemoveByNextNav extends StatelessWidget {
  const RemoveByNextNav({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        centerTitle: true,
        title: Text("Remove Next and No Back",
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
            Text('This is Remove By Next and have No Back Navigation.',
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
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                        builder: (context) => NoBackNav(),
                    ),
                    (route) =>false
                  );
                },
                child: Text('Remove By Next',
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
