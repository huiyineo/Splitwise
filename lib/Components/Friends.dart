import 'package:flutter/material.dart';
import 'friends-widgets/friend_filter.dart';
import 'friends-widgets/friend_row.dart';

class Friends extends StatelessWidget {
  final _friends = const [
    {'name': 'huiyi.neo', 'status': 'owes you', 'amount': 12000.00},
    {'name': 'kaythi', 'status': 'you owes', 'amount': 999.99},
    {'name': 'sowndar', 'status': 'owes you', 'amount': 212.00},
    {'name': 'lanxin', 'status': 'settled up', 'amount': 0},
    {'name': 'annie', 'status': 'owes you', 'amount': 12000.12},
    {'name': 'hailling', 'status': 'you owes', 'amount': 999.99},
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        //margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
        child: Column(
          children: <Widget>[
            FriendFilter(),
            ..._friends
                .map((friend) => FriendRow(friend['name'] as String,
                    friend['status'] as String, friend['amount'].toString()))
                .toList(),
            Container(
                margin: EdgeInsets.fromLTRB(20, 25, 20, 15),
                child: Text(
                  'Splitwise hides friends who have been settled up for more than 7 days.',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.grey[600])
                )),
            ElevatedButton(
                onPressed: () {}, child: Text('Show x settled-up friend')),
            ElevatedButton(onPressed: () {}, child: Text('+ ADD MORE FRIENDS')),
          ],
        ));
  }
}
