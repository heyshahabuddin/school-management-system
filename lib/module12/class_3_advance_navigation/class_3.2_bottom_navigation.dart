import 'package:flutter/material.dart';
import 'package:schoolmanagement/module11/class_1_basic_widgets_and_layouts/class_1.3_list_view_builder.dart';
import 'package:schoolmanagement/module11/class_1_basic_widgets_and_layouts/class_1.8_grid_view_builder.dart';
import 'package:schoolmanagement/module12/class_2_tabs_drawer/TravelHomeScreen/TravelHomeScreen.dart';

class CustomBottomNav extends StatefulWidget {
  const CustomBottomNav({super.key});

  @override
  State<CustomBottomNav> createState() => _CustomBottomNavState();
}

class _CustomBottomNavState extends State<CustomBottomNav> {
  int _selectedIndex = 0;
  List pages=[
    TravelHomeScreen(),
    GridViewBuilder(),
    ListViewBuilderWidget(),
  ];

  onTab(index){
    setState(() {
      _selectedIndex = index;
      print(_selectedIndex);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: onTab,
        items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.search),
                label: 'Search',
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'Profile',
            ),
          ],
      ),
    );
  }
}
