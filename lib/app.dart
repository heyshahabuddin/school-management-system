import 'package:flutter/material.dart';
import 'package:schoolmanagement/buttongroup.dart';
import 'package:schoolmanagement/form.dart';
import 'package:schoolmanagement/home.dart';
import 'package:schoolmanagement/module11/class1/class_1.1_list_tile.dart';
import 'package:schoolmanagement/module11/class1/class_1.2_list_view.dart';
import 'package:schoolmanagement/module11/class1/class_1.3_list_view_builder.dart';
import 'package:schoolmanagement/module11/class1/class_1.4_list_view_builder_card.dart';
import 'package:schoolmanagement/module11/class1/class_1.5_list_view_builder_for_horizontal_container.dart';
import 'package:schoolmanagement/module11/class1/class_1.6_list_view_separator.dart';
import 'package:schoolmanagement/module11/class1/class_1.7_grid_view_basic.dart';
import 'package:schoolmanagement/module11/class1/class_1.8_grid_view_builder.dart' show GridViewBuilder;
import 'package:schoolmanagement/module11/class2/class_2.1_stack.dart';
import 'package:schoolmanagement/user_input.dart';

class MyApp extends StatelessWidget{
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    //throw UnimplementedError();
    return MaterialApp(
      title: 'School Management',
      home: CustomStackWidget(),
    );
  }
}