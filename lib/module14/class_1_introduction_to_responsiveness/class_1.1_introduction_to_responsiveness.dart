import 'package:flutter/material.dart';

class IntroductionToResponsiveness extends StatelessWidget {
  const IntroductionToResponsiveness({super.key});

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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Device is in: $deviceMode',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
              SizedBox(height: 30,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Flutter App Development Career Path - Batch 4',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 30,),
              Container(
                width: 200,
                height: 200,
                color: Colors.blue,
                child: Text('Flutter App Course'),
              ),
              SizedBox(height: 30,),
              AspectRatio(
                aspectRatio: 16/9,
                child: Container(
                  color: Colors.red,
                    child: Text('Flutter Course')
                ) ,
              ),
              SizedBox(height: 30,),
              Container(
                width: screenSize.width*.5,
                height: screenSize.height*.5,
                color: Colors.cyanAccent,
              ),
              SizedBox(height: 30,),
              Text('Hello, Flutter',
              style: TextStyle(
                  color: screenSize.width > 600? Colors.red : Colors.red,
                  fontSize: screenSize.width > 600? 45 : 35,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(height: 30,),
              FractionallySizedBox(
                widthFactor: .80,  // 80%
                child: Container(
                  height: 250,
                  color: Colors.blue,
                ),
              ),
              SizedBox(height: 30,),

              // show icon according to device orientation
              deviceMode == Orientation.portrait ?
              Icon(Icons.mobile_friendly, size: 80,):
              Icon(Icons.tab, size: 80,),
              SizedBox(height: 30,),

              // show items according to device size
              Text('Adaptive layout ${isTable ? 'Table': 'Mobile'}',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),

              isTable? Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  deviceMode == Orientation.portrait ?
                  Icon(Icons.mobile_friendly):
                  Icon(Icons.tab),
                  Text('T: 01722574364'),
                  Icon(Icons.call),
                ],
              ):
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(Icons.mobile_friendly),
                  Text('M: 01722574364'),
                  Icon(Icons.call),
                ],
              ),


              SizedBox(height: 100,),
            ],
          ),
        ),
      ),
    );
  }
}
