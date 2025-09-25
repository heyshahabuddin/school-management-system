import 'package:flutter/material.dart';
import 'package:schoolmanagement/module11/class_1_basic_widgets_and_layouts/class_1.2_list_view.dart';
import 'package:schoolmanagement/module11/class_1_basic_widgets_and_layouts/class_1.4_list_view_builder_card.dart';
import 'package:schoolmanagement/module12/class_2_tabs_drawer/TravelHomeScreen/TravelHomeScreen.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    bool isShowSubmenu = true;  // Need stateful widget for submenu
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
        drawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                  child: Column(
                    children: [
                      CircleAvatar(
                        backgroundImage: NetworkImage('https://scontent.fdac175-1.fna.fbcdn.net/v/t39.30808-6/512711748_752837740432669_2313112492627935771_n.jpg?_nc_cat=102&ccb=1-7&_nc_sid=833d8c&_nc_ohc=xuHUJz-PhjoQ7kNvwHn17LC&_nc_oc=Adm_JXgAkjqMxyEjM4cQfggQmmZm5bRFOdWA2grDHZqix6UdEjjPLHQebaSKQw4J4b0&_nc_zt=23&_nc_ht=scontent.fdac175-1.fna&_nc_gid=4TlVIgB9ZBtv9b0zBFs4EA&oh=00_AfbH-t74y_mqcLf6ouHAV3m6HNZ2WZu1vFnl1pPcSshhTQ&oe=68D9F995'),
                        radius: 35,
                      ),
                      SizedBox(height: 5,),
                      Text(
                        'Liliy',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        'liliy@gmail.com',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      )
                    ],
                  ),
              ),
              ListTile(
                visualDensity: VisualDensity(horizontal: -4, vertical: -4),
                leading: Icon(Icons.home),                     // add at the first
                title: Text('Home',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => TravelHomeScreen()
                    ),
                  );
                },
              ),
              isShowSubmenu ? ListTile(
                leading: Icon(Icons.design_services),                     // add at the first
                title: Text('Services',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ): SizedBox(),
              Divider(),
              ListTile(
                leading: Icon(Icons.settings),                     // add at the first
                title: Text('Settings',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.favorite),                     // add at the first
                title: Text('Favorite',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
        endDrawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                  child: Column(
                    children: [
                      CircleAvatar(
                        backgroundImage: NetworkImage('https://scontent.fdac175-1.fna.fbcdn.net/v/t39.30808-6/512711748_752837740432669_2313112492627935771_n.jpg?_nc_cat=102&ccb=1-7&_nc_sid=833d8c&_nc_ohc=xuHUJz-PhjoQ7kNvwHn17LC&_nc_oc=Adm_JXgAkjqMxyEjM4cQfggQmmZm5bRFOdWA2grDHZqix6UdEjjPLHQebaSKQw4J4b0&_nc_zt=23&_nc_ht=scontent.fdac175-1.fna&_nc_gid=4TlVIgB9ZBtv9b0zBFs4EA&oh=00_AfbH-t74y_mqcLf6ouHAV3m6HNZ2WZu1vFnl1pPcSshhTQ&oe=68D9F995'),
                        radius: 35,
                      ),
                      SizedBox(height: 5,),
                      Text(
                        'Liliy',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        'liliy@gmail.com',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      )
                    ],
                  ),
              ),
              ListTile(
                visualDensity: VisualDensity(horizontal: -4, vertical: -4),
                leading: Icon(Icons.home),                     // add at the first
                title: Text('Home',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => TravelHomeScreen()
                    ),
                  );
                },
              ),
              isShowSubmenu ? ListTile(
                leading: Icon(Icons.design_services),                     // add at the first
                title: Text('Services',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ): SizedBox(),
              Divider(),
              ListTile(
                leading: Icon(Icons.settings),                     // add at the first
                title: Text('Settings',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.favorite),                     // add at the first
                title: Text('Favorite',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
