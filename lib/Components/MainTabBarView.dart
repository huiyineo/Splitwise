import 'package:flutter/material.dart';
import './Friends.dart';
import './Groups.dart';
import './Activity.dart';

class MainTabBarView extends TabBarView {
  MainTabBarView()
      : super(children: [
          Friends(),
          Groups(),
          Activity(),
        ]);
}
