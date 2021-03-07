import 'package:flutter/material.dart';
import 'package:flutter_splitwise/Components/expense.dart';
import 'package:flutter_splitwise/Components/main_tab_bar_view.dart';
import 'Components/sidebar.dart';
import 'Components/main_tab_bar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Splitwise',
<<<<<<< HEAD
      home: MyHome(),
    );
  }
}

class MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(59, 174, 142, 1),
          title: Text('SplitWise'),
          actions: <Widget>[
            IconButton(icon: const Icon(Icons.search), onPressed: null),
            PopupMenuButton(
                icon: Icon(Icons.more_vert),
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
          backgroundColor: Colors.orange[800],
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Expense(),
                ));
          },
=======
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Color.fromRGBO(91, 197, 167, 1),
            title: Text('SplitWise'),
            actions: <Widget>[
              IconButton(icon: const Icon(Icons.search), onPressed: null),
              PopupMenuButton(
                  icon: Icon(Icons.more_vert),
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
            backgroundColor: Colors.orange[800],
            onPressed: () {},
          ),
          drawer: Sidebar(),
          body: MainTabBarView(),
>>>>>>> 1ccf5191394b752d91ce8203ce312b0ce745def3
        ),
        drawer: Sidebar(),
        body: MainTabBarView(),
      ),
    );
  }
}
