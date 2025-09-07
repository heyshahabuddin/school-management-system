import 'package:flutter/material.dart';
class ButtonGroup extends StatelessWidget {
  const ButtonGroup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Buttons"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      //backgroundColor: Colors.orange[50],
      //backgroundColor: Colors.orange.withOpacity(.05),
      backgroundColor: Colors.orange.shade50,
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: (){},
              child: Text('Submit'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)
                ),

              ),
            ),
            SizedBox(height: 30,),
            SizedBox(
              height: 60,
              //width: 200,
              width: double.infinity,
              child: ElevatedButton(
                onPressed: (){},
                child: Text('Submit'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)
                  ),

                ),
              ),
            ),
            ElevatedButton(
              onPressed: (){},
              child: Text('Submit'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)
                ),

              ),
            ),
            OutlinedButton(
                onPressed: (){},
                child: Text('Outline Button',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w800,
                      fontStyle: FontStyle.italic
                  ),
                )
            ),
            TextButton(
              onPressed: (){},
              child: Text('Read More...',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w600,
                  color: Colors.blueGrey,
                ),
              ),
            ),
            SizedBox(height: 50,),
            Icon(
              Icons.phone_android,
              size: 50,
              color: Colors.amberAccent,
            ),
            SizedBox(height: 50,),
            IconButton(
                onPressed: (){},
                icon: Icon(
                  Icons.dangerous,
                  size: 80,
                  color: Colors.red,
                ))
          ],
        ),
      ),
    );
  }
}