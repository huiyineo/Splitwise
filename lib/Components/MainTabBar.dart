import 'package:flutter/material.dart';

class MainTabBar extends TabBar {
  MainTabBar()
      : super(tabs: [
          Tab(
            text: 'FRIENDS',
          ),
          Tab(
            text: 'GROUPS',
          ),
          Tab(
            text: 'ACTIVITY',
          ),
        ]);
}
