import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Splitwise',
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.lightGreen,
            title: Text('SplitWise'),
            actions: <Widget>[
              IconButton(icon: const Icon(Icons.search), onPressed: null),
              PopupMenuButton(
                  itemBuilder: (context) => [
                        PopupMenuItem(
                          child: Text('Add Friend'),
                        ),
                        PopupMenuItem(
                          child: Text('Create a group'),
                        ),
                      ]),
            ],
            bottom: TabBar(tabs: [
              Tab(
                text: 'Friends',
              ),
              Tab(
                text: 'Groups',
              ),
              Tab(
                text: 'Activity',
              ),
            ]),
          ),
          floatingActionButton: FloatingActionButton(
            child: Icon(Icons.add),
            backgroundColor: Colors.lightGreen,
          ),
          drawer: Drawer(
            child: ListView(
              children: <Widget>[
                DrawerHeader(
                  child: Text('User'),
                ),
                ListTile(
                  title: Text('Home'),
                ),
                ListTile(
                  title: Text('Settings'),
                ),
                ListTile(
                  title: Text('Scan code'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
