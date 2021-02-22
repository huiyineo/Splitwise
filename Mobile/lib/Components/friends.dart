import 'package:flutter/material.dart';
import 'friends-widgets/friend_filter.dart';
import 'friends-widgets/friend_row.dart';
import 'package:intl/intl.dart';

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
        child: Column(
          children: <Widget>[
            FriendFilter(),
            ..._friends
                .map((friend) => FriendRow(
                    friend['name'] as String,
                    friend['status'] as String,
                    NumberFormat.currency(symbol: 'S\$')
                        .format(friend['amount'])))
                .toList(),
            Container(
                margin: EdgeInsets.fromLTRB(20, 25, 20, 15),
                child: Text(
                    'Splitwise hides friends who have been settled up for more than 7 days.',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.grey[600]))),
            ElevatedButton(
                onPressed: () {},
                child: Text('Show x settled-up friend',
                    style: TextStyle(
                        color: Color.fromRGBO(59, 174, 142, 1), fontSize: 12)),
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  onPrimary: Color.fromRGBO(59, 174, 142, 1),
                  side: BorderSide(color: Color.fromRGBO(59, 174, 142, 1), width: 2)
                ),
                ),
            Container(
                margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: Row(
                  children: [
                    Expanded(
                        child: ElevatedButton(
                            onPressed: () {},
                            child: Text(
                              '+ ADD MORE FRIENDS',
                              style: TextStyle(
                                  color: Colors.grey[900], fontSize: 12),
                            ),
                            style: ElevatedButton.styleFrom(
                              primary: Colors.grey[200],
                            )))
                  ],
                )),
          ],
        ));
  }
}
