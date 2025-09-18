import 'package:flutter/material.dart';
import 'package:schoolmanagement/buttongroup.dart';
import 'package:schoolmanagement/form.dart';
import 'package:schoolmanagement/home.dart';
import 'package:schoolmanagement/module11/class_1.1_list_tile.dart';
import 'package:schoolmanagement/module11/class_1.2_list_view.dart';
import 'package:schoolmanagement/module11/class_1.3_list_view_builder.dart';
import 'package:schoolmanagement/module11/class_1.4_list_view_builder_card.dart';
import 'package:schoolmanagement/module11/class_1.5_list_view_builder_for_horizontal_container.dart';
import 'package:schoolmanagement/user_input.dart';

class MyApp extends StatelessWidget{
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    //throw UnimplementedError();
    return MaterialApp(
      title: 'School Management',
      home: ListViewBuilderForContainer(),
    );
  }
}