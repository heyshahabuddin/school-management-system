import 'package:flutter/material.dart';
import 'package:schoolmanagement/buttongroup.dart';
import 'package:schoolmanagement/home.dart';

class MyApp extends StatelessWidget{
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    //throw UnimplementedError();
    return MaterialApp(
      title: 'School Management',
      home: ButtonGroup(),
    );
  }
}