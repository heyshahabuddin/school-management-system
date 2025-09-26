import 'package:flutter/material.dart';
import 'package:schoolmanagement/buttongroup.dart';
import 'package:schoolmanagement/form.dart';
import 'package:schoolmanagement/home.dart';
import 'package:schoolmanagement/module11/class_1_basic_widgets_and_layouts/class_1.1_list_tile.dart';
import 'package:schoolmanagement/module11/class_1_basic_widgets_and_layouts/class_1.2_list_view.dart';
import 'package:schoolmanagement/module11/class_1_basic_widgets_and_layouts/class_1.3_list_view_builder.dart';
import 'package:schoolmanagement/module11/class_1_basic_widgets_and_layouts/class_1.4_list_view_builder_card.dart';
import 'package:schoolmanagement/module11/class_1_basic_widgets_and_layouts/class_1.5_list_view_builder_for_horizontal_container.dart';
import 'package:schoolmanagement/module11/class_1_basic_widgets_and_layouts/class_1.6_list_view_separator.dart';
import 'package:schoolmanagement/module11/class_1_basic_widgets_and_layouts/class_1.7_grid_view_basic.dart';
import 'package:schoolmanagement/module11/class_1_basic_widgets_and_layouts/class_1.8_grid_view_builder.dart' show GridViewBuilder;
import 'package:schoolmanagement/module11/class_2_alert_stack_navigation/class_2.1_stack.dart';
import 'package:schoolmanagement/module11/class_2_alert_stack_navigation/class_2.3_navigation.dart';
import 'package:schoolmanagement/module11/class_2_alert_stack_navigation/class_3.1_alert.dart';
import 'package:schoolmanagement/module11/class_2_alert_stack_navigation/navigation/remove_by_next_page.dart';
import 'package:schoolmanagement/module11/class_2_alert_stack_navigation/navigation/replace_by_next_page.dart';
import 'package:schoolmanagement/module11/class_2_alert_stack_navigation/navigation/value_pass.dart';
import 'package:schoolmanagement/module12/class_1_theme_settings/class_1.1_theme_settings.dart';
import 'package:schoolmanagement/module12/class_2_tabs_drawer/TravelHomeScreen/TravelHomeScreen.dart';
import 'package:schoolmanagement/module12/class_2_tabs_drawer/class_2.1_tabs.dart';
import 'package:schoolmanagement/module12/class_2_tabs_drawer/class_2.2_load_pages_with_tabs.dart';
import 'package:schoolmanagement/module12/class_2_tabs_drawer/class_2.3_drawer.dart';
import 'package:schoolmanagement/module12/class_3_advance_navigation/class_3.1_advance_navigation.dart';
import 'package:schoolmanagement/module12/class_3_advance_navigation/class_3.2_bottom_navigation.dart';
import 'package:schoolmanagement/user_input.dart';

class MyApp extends StatelessWidget{
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    //throw UnimplementedError();
    return MaterialApp(
      // setting theme for app - module 12
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.teal,
        primarySwatch: Colors.lightGreen,
        scaffoldBackgroundColor: Colors.brown,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.teal,
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            )
          ),
        ),
        inputDecorationTheme: InputDecorationThemeData(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: BorderSide(
              color: Colors.blue,
            ),
          ),
          hintStyle: TextStyle(
            color: Colors.blue,
          ),
        ),
        textTheme: TextTheme(
          bodyLarge: TextStyle(
            fontSize: 35,
            fontWeight: FontWeight.bold,
            color: Colors.cyanAccent,
          ),
          titleMedium: TextStyle(
            fontSize: 35,
            fontWeight: FontWeight.bold,
            color: Colors.red,
          ),
        ),
        cardTheme: CardThemeData(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          color: Colors.red,
        )
      ),
      darkTheme: ThemeData.light(),
      themeMode: ThemeMode.light,

      title: 'School Management',
      // home: UserForm(),
      // home: CustomListViewBuilderCard(),
      // home: ListViewWidget(),
      // home: CustomNavigation(),
      // home: ReplaceByNextNav(),
      // home: RemoveByNextNav(),
      // home: ValuePassing(name: 'shahab',),
      // home: Alerts(),
      // home: ThemeSettings(),
      // home: CustomTabs(),
      // home: LoadPagesWithTabs(),
      // home: CustomDrawer(),
      home: AdvancedCustomNavigation(),
      initialRoute: '/bottomNav',

      // setting theme for app - module 12 - Class: 03
      // Setting routes like url
      routes: {
        '/home'     : (context) => TravelHomeScreen(),
        '/settings' : (context) => ThemeSettings(),
        '/favorite' : (context) => ListViewWidget(),
        '/bottomNav' : (context) => CustomBottomNav(),
      },
    );
  }
}