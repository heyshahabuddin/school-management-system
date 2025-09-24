import 'package:flutter/material.dart';
import 'package:schoolmanagement/module11/class_1_basic_widgets_and_layouts/class_1.2_list_view.dart';
import 'package:schoolmanagement/module11/class_1_basic_widgets_and_layouts/class_1.4_list_view_builder_card.dart';
import 'package:schoolmanagement/module11/class_2_alert_stack_navigation/class_2.3_navigation.dart';
import 'package:schoolmanagement/module12/class_2_tabs_drawer/TravelHomeScreen/TravelHomeScreen.dart';

class LoadPagesWithTabs extends StatelessWidget {
  const LoadPagesWithTabs({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.teal,
            centerTitle: true,
            title: Text('Custom Tabs',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 35,
                  fontWeight: FontWeight.bold
              ),
            ),
            bottom: TabBar(
              //isScrollable: true,
              indicatorColor: Colors.orange,
              indicatorSize: TabBarIndicatorSize.tab,
              indicatorWeight: 5,
              indicatorPadding: EdgeInsets.all(4),
              indicator: BoxDecoration(
                color: Colors.lightGreen,
                borderRadius: BorderRadius.circular(10)
              ),
              labelStyle: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),
              unselectedLabelColor: Colors.red,

              tabs: [
                Tab(
                  icon: Icon(Icons.home),
                  text: 'Home',
                ),
                Tab(
                  icon: Icon(Icons.settings),
                  text: 'Settings',
                ),
                Tab(
                  icon: Icon(Icons.favorite),
                  text: 'Favorite',
                ),
              ]
            )
        ),
        body: TabBarView(
          children: [
            TravelHomeScreen(),
            CustomListViewBuilderCard(),
            ListViewWidget(),
            //CustomNavigation(),
          ],
        ),
      ),
    );
  }
}
