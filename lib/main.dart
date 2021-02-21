import 'package:flutter/material.dart';
import 'package:flutter_splitwise/Components/MainTabBarView.dart';
import './Components/Sidebar.dart';
import 'Components/MainTabBar.dart';

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
                          child: Text('Add friends on Splitwise'),
                        ),
                        PopupMenuItem(
                          child: Text('Create a group'),
                        ),
                      ]),
            ],
            bottom: MainTabBar(),
          ),
          floatingActionButton: FloatingActionButton(
            child: Icon(Icons.add),
            backgroundColor: Colors.lightGreen,
            onPressed: () {},
          ),
          drawer: Sidebar(),
          body: MainTabBarView(),
        ),
      ),
    );
  }
}
