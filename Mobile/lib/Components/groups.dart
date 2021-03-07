import 'package:flutter/material.dart';
import 'share-widgets/page_filter.dart';
import 'groups-widgets/group_row.dart';
import 'package:intl/intl.dart';

class Groups extends StatelessWidget {
  final _groups = const [
    {
      'name': 'Titansoft',
      'status': 'owes you',
      'amount': 12000.00,
      'details': [
        {'name': 'huiyi.neo', 'status': 'you owe', 'amount': 7000.00},
        {'name': 'kaythi', 'status': 'owes you', 'amount': 1000.00},
        {'name': 'sowndar', 'status': 'you owe', 'amount': 6000.00}
      ]
    },
    {
      'name': 'Yotta',
      'status': 'you owe',
      'amount': 999.99,
      'details': [
        {'name': 'huiyi.neo', 'status': 'you owe', 'amount': 999.99}
      ]
    },
    {
      'name': 'MIT',
      'status': 'owes you',
      'amount': 212.00,
      'details': [
        {'name': 'huiyi.neo', 'status': 'owes you', 'amount': 212.00}
      ]
    },
    {'name': 'Very Long Name Group', 'status': 'settled up', 'amount': 0},
    {
      'name': 'Non-group expenses',
      'status': 'owes you',
      'amount': 12000.12,
      'details': [
        {'name': 'huiyi.neo', 'status': 'you owe', 'amount': 7000.12},
        {'name': 'kaythi', 'status': 'owes you', 'amount': 1000.00},
        {'name': 'sowndar', 'status': 'you owe', 'amount': 6000.00}
      ]
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        child: Column(
          children: <Widget>[
            PageFilter(),
            ..._groups
                .map((group) => GroupRow(
                    group['name'] as String,
                    group['status'] as String,
                    NumberFormat.currency(symbol: 'S\$').format(group['amount']),
                    group['details'] as List))
                .toList(),
            Container(
                margin: EdgeInsets.fromLTRB(20, 25, 20, 15),
                child: Text(
                    'Splitwise hides groups who have been settled up for more than 7 days.',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.grey[600]))),
            ElevatedButton(
              onPressed: () {},
              child: Text('Show x settled-up group',
                  style: TextStyle(
                      color: Color.fromRGBO(91, 197, 167, 1), fontSize: 12)),
              style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  onPrimary: Color.fromRGBO(91, 197, 167, 1),
                  side: BorderSide(
                      color: Color.fromRGBO(91, 197, 167, 1), width: 2)),
            ),
            Container(
                margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: Row(
                  children: [
                    Expanded(
                        child: ElevatedButton(
                            onPressed: () {},
                            child: Text(
                              '+ START A NEW GROUP',
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
