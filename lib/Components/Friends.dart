import 'dart:ffi';

import 'package:flutter/material.dart';
import './Friends-widgets/friendFilter.dart';
import 'Friends-widgets/friendRow.dart';

class Friends extends StatelessWidget {
  final _friends = const [
    {'name': 'huiyi.neo', 'status': 'owes you', 'amount': 12000.00},
    {'name': 'kaythi', 'status': 'you owes', 'amount': 999.99},
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
        child: Column(
          children: <Widget>[
            FriendFilter(),
            ..._friends
                .map((friend) => FriendRow(friend['name'] as String,
                    friend['status'] as String, friend['amount'].toString()))
                .toList(),
            Text(
                'Splitwise hides friends who have been settled up for more than 7 days.'),
          ],
        ));
  }
}
