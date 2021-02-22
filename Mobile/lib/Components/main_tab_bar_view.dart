import 'package:flutter/material.dart';
import 'friends.dart';
import 'groups.dart';
import 'activity.dart';

class MainTabBarView extends TabBarView {
  MainTabBarView()
      : super(children: [
          Friends(),
          Groups(),
          Activity(),
        ]);
}
