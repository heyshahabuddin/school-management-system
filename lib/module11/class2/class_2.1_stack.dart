import 'package:flutter/material.dart';
import 'package:schoolmanagement/module11/class2/class_2.2_custom_city_widget.dart';

class CustomStackWidget extends StatelessWidget {
  const CustomStackWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        centerTitle: true,
        title: Text("Stack",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 35,
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(  // Use Stack to overlap multiple contents for One on top of the other.
            children: [
              Container(
                color: Colors.blue,
                width: 350,
                height: 300,
              ),
              Container(
                  color: Colors.deepOrange,
                  width: 320,
                  height: 280,
              ),
              Positioned(
                left: 50,
                top: 20,
                right: 60,
                //bottom: 30,
                child: Container(
                  color: Colors.teal,
                  width: 280,
                  height: 250,
                ),
              ),
            ],
          ),
          Stack(
            children: [
              CircleAvatar(
                radius: 60,
                backgroundImage: NetworkImage('https://scontent.fjsr8-1.fna.fbcdn.net/v/t1.6435-9/93483619_2942687322482289_2294956826191462400_n.jpg?_nc_cat=110&ccb=1-7&_nc_sid=6ee11a&_nc_ohc=j3Ura5DRlX0Q7kNvwGjLdu8&_nc_oc=Adltj6Fu_TvLEAzCsEpNpcXKp1gDRlE0orQ4R9XTR9WuH2-7k7yunJPbqdvObit_52w&_nc_zt=23&_nc_ht=scontent.fjsr8-1.fna&_nc_gid=-UH6JANxMSPFNQlaICkTwA&oh=00_AfYdxndkFo0mA0cDk4WLXFs__cGNOiz1XQQgLBCCJRAP_w&oe=68F3B762'),
              ),
              Positioned(
                bottom: 15,
                right: 5,
                child: Container(
                  width: 20,
                  height: 20,
                  decoration: BoxDecoration(
                    color: Colors.teal,
                    shape: BoxShape.circle,  // Make the container as a circle
                    border: Border.all(
                      color: Colors.white,
                      width: 3,
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 70,
          ),
          CityWidget(),



        ],
      ),
    );
  }
}