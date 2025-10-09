import 'package:flutter/material.dart';

class ListviewBuilderWithSingleChildScrollViewFixing extends StatelessWidget {
  const ListviewBuilderWithSingleChildScrollViewFixing({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('ListviewBuilderWithSingleChildScrollViewFixing',
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
            ListView.builder(  // list items will  place within 200px height
              /*
                * Fixing:
                * RenderBox was not laid out: RenderViewport#5bf98 NEEDS-PAINT NEEDS-COMPOSITING-BITS-UPDATE'
                package:flutter/src/rendering/box.dart': Failed assertion: line 2251 pos 12: 'hasSize'
                * shrinkWrap & physics
                */
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: 20,
                itemBuilder: (context, index){
                  return ListTile(
                    title: Text('Hello, Flutter!'),
                  );
                }
            ),
        
            Divider(
              height: 50,
              color: Colors.blue,
            ),
            Text('Hello,  Flutter App!',
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold
              ),
            ),
            Text('Hello,  Flutter App!',
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold
              ),
            ),
            Text('Hello,  Flutter App!',
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold
              ),
            ),
            Text('Hello,  Flutter App!',
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold
              ),
            ),
            Text('Hello,  Flutter App!',
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold
              ),
            ),
            Text('Hello,  Flutter App!',
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold
              ),
            ),
            Text('Hello,  Flutter App!',
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold
              ),
            ),
            Text('Hello,  Flutter App!',
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold
              ),
            ),
            Text('Hello,  Flutter App!',
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold
              ),
            ),
            Text('Hello,  Flutter App!',
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold
              ),
            ),

          ],
        ),
      ),
    );
  }
}
